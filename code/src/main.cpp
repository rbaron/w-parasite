#include <Arduino.h>
#include <driver/adc.h>
#include <esp_attr.h>

#include "parasite/batt.h"
#include "parasite/config.h"
#include "parasite/mqtt_client.h"
#include "parasite/pwm.h"
#include "parasite/soil_moisture.h"
#include "parasite/wifi.h"

// RTC_DATA_ATTR makes these data persistent across deep-sleep cycles.
RTC_DATA_ATTR unsigned int boot_count = 0;
RTC_DATA_ATTR unsigned int clean_exit_count = 0;

unsigned long t0 = millis();

void run() {
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
  mqtt_client.Publish(PRST_MQTT_TOPIC_SOIL_MOISTURE_RAW, moisture.raw, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_BATT_VOLTAGE, batt.voltage, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_BATT_VOLTAGE_RAW, batt.raw, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_RUNTIME, millis() - t0, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_BOOT_COUNT, boot_count, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_CLEAN_EXIT_COUNT, clean_exit_count, true);
  mqtt_client.Publish(PRST_MQTT_TOPIC_ERROR_COUNT,
                      boot_count - clean_exit_count - 1, true);

  delay(100);

  mqtt_client.FlushAndDisconnect();
  parasite::wifi::DisconnectWiFi();
  clean_exit_count++;
}

void setup() {
  boot_count += 1;
  Serial.begin(115200);

  run();

  // Go to deep sleep
  adc_power_off();
  esp_sleep_enable_timer_wakeup(PRST_DS_TIME_TO_SLEEP_IN_SECONDS *
                                PRST_S_TO_US_FACTOR);
  esp_deep_sleep_start();
}

void loop() {}