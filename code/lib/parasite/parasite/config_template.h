#ifndef _PARASITE_CONFIG_H_
#define _PARASITE_CONFIG_H_

// TODO(rbaron): constexpr all the things.

// Define PRST_DEBUG for extra serial debug info. Make sure this is commented
// out when running it for real!
#define PRST_DEBUG

// WiFi credentials.
#define PRST_WIFI_SSID "MY_SSID"
#define PRST_WIFI_PASS "MY_PASS"

// MQTT credentials.
#define PRST_MQTT_USER "mqttuser"
#define PRST_MQTT_PASS "mqttpassword"
#define PRST_MQTT_CLIENT_ID "w-parasite"

// MQTT broker.
#define PRST_MQTT_BROKER_IP \
  "192.168.178.124"  // Prefer using IP addresses instead of hostnames. It saves
                     // time.
#define PRST_MQTT_BROKER_PORT 1883

// Macro for generating MQTT topics.
#define PRST_MQTT_TOPIC(END) "home/" PRST_MQTT_CLIENT_ID END

// MQTT topics.
#define PRST_MQTT_TOPIC_BATT_VOLTAGE PRST_MQTT_TOPIC("/battery_voltage")
#define PRST_MQTT_TOPIC_BATT_VOLTAGE_RAW PRST_MQTT_TOPIC("/battery_voltage_raw")
#define PRST_MQTT_TOPIC_CONN_STATE PRST_MQTT_TOPIC("/conn_state")
#define PRST_MQTT_TOPIC_SOIL_MOISTURE_PERCENT \
  PRST_MQTT_TOPIC("/soil_moisture_percent")
#define PRST_MQTT_TOPIC_SOIL_MOISTURE_RAW PRST_MQTT_TOPIC("/soil_moisture_raw")
#define PRST_MQTT_TOPIC_RUNTIME PRST_MQTT_TOPIC("/runtime")
#define PRST_MQTT_TOPIC_BOOT_COUNT PRST_MQTT_TOPIC("/boot_count")
#define PRST_MQTT_TOPIC_CLEAN_EXIT_COUNT PRST_MQTT_TOPIC("/clean_exit_count")
#define PRST_MQTT_TOPIC_ERROR_COUNT PRST_MQTT_TOPIC("/error_count")

// Soil sensor.
#define PRST_SS_PIN_SOIL_MOISTURE 36
#define PRST_SS_AIR_RAW 50  // Value measured when the sensor is out in the air.
#define PRST_SS_WATER_RAW \
  2400  // Value measured when the sensor is completely under water.

// PWM.
#define PRST_PWM_PIN 16
#define PRST_PWM_PIN_FAST_DISCHARGE_PIN 17
#define PRST_PWM_CHANNEL 0
#define PRST_PWM_FREQ 500000
#define PRST_PWM_RESOLUTION 3
#define PRST_PWM_DUTY_CYCLE 4

// Battery monitor.
#define PRST_BM_PIN 39
#define PRST_BM_R1_DIVIDER 470  // R1 and R2 form a voltage divider.
#define PRST_BM_R2_DIVIDER 470

// Deep sleep.
#define PRST_DS_TIME_TO_SLEEP_IN_SECONDS 10 * 60

#endif  // _PARASITE_CONFIG_H_