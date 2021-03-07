#include <Arduino.h>
#include <driver/adc.h>
#include <esp_attr.h>
#include <soc/rtc_cntl_reg.h>
#include <soc/soc.h>

#include "parasite/batt.h"
#include "parasite/config.h"
#include "parasite/mqtt_client.h"
#include "parasite/pwm.h"
#include "parasite/soil_moisture.h"
#include "parasite/wifi.h"

constexpr int kSToUSFactor = 1000000;

// RTC_DATA_ATTR makes these data persistent across deep-sleep cycles.
RTC_DATA_ATTR unsigned int boot_count = 0;
RTC_DATA_ATTR unsigned int clean_exit_count = 0;

unsigned long t0 = millis();

void run() {
  // I'm fighting through tears as I painfully disable the brownout detector.
  // To keep things low power, I'm using a small LDO (HT7333) that has ~8uA
  // quiescent current, but can source only up to 250mA peak current.
  // Additionally, the LIR2450 can only handle 200mA peak current. These
  // restrictions on current are below what the ESP32 requires (up to 500mA!),
  // and sometimes it trigger the brownout detector, specially right when
  // connecting to WiFi. Disabling the brownout detector is a bad idea in
  // general (and here included, as it can lead to weird and hard to debug
  // failure modes, not to mention undefined behavior), but in my tests it seems
  // like we can work through it, and the system behaves as expected. As we try
  // to squeeze every Coulomb of useful charge from our tiny battery, this abuse
  // seems to be the price to pay.
  WRITE_PERI_REG(RTC_CNTL_BROWN_OUT_REG, 0);

  parasite::pwm::StartPWM();
  parasite::soil_moisture::soil_moisture_read_t moisture =
      parasite::soil_moisture::ReadSoilMoisture();
  Serial.printf("Read moisture: %d -> %f\n", moisture.raw, moisture.percentage);
  parasite::pwm::StopPWM();

  parasite::batt::batt_read_t batt = parasite::batt::ReadBattVoltage();
  Serial.printf("Read batt: %f -> %f\n", batt.raw, batt.voltage);

  if (parasite::wifi::SetupWiFi(&Serial) != WL_CONNECTED) {
    Serial.println("Giving up connecting to WiFi for now.");
    return;
  }

  parasite::mqtt::MQTTClient mqtt_client(&Serial);

  if (!mqtt_client.Loop()) {
    Serial.println("Error calling mqtt_client.Loop(). Giving up.");
    return;
  }

  mqtt_client.Publish(PRST_MQTT_TOPIC_SOIL_MOISTURE_PERCENT,
                      moisture.percentage, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_BATT_VOLTAGE, batt.voltage, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_SOIL_MOISTURE_RAW, moisture.raw, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_BATT_VOLTAGE_RAW, batt.raw, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_RUNTIME, millis() - t0, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_BOOT_COUNT, boot_count, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_CLEAN_EXIT_COUNT, clean_exit_count, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_ERROR_COUNT,
                      boot_count - clean_exit_count - 1, true);

  mqtt_client.FlushAndDisconnect();

  // This shouldn't be necessary, but apparently we're missing some published
  // messages.
  delay(50);

  parasite::wifi::DisconnectWiFi();
  clean_exit_count++;
}

void setup() {
  boot_count += 1;
  Serial.begin(115200);

  run();

  // Go to sleep.
  adc_power_off();
  esp_sleep_enable_timer_wakeup(PRST_DS_TIME_TO_SLEEP_IN_SECONDS *
                                kSToUSFactor);
  esp_deep_sleep_start();
}

void loop() {}