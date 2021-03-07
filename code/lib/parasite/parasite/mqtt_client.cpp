#include "parasite/mqtt_client.h"

#include "parasite/config.h"

namespace parasite {
namespace mqtt {
namespace {
constexpr int kMaxMQTTConnectionAttemps = 3;
}  // namespace

bool MQTTClient::ReconnectIfNeeded() {
  int attempts = 0;
  while (!pubsub_client_.connected()) {
    if (++attempts > kMaxMQTTConnectionAttemps) {
      return false;
    }
    serial_->print("[mqtt_client] Attempting MQTT connection...");
    if (pubsub_client_.connect(
            PRST_MQTT_CLIENT_ID, PRST_MQTT_USER, PRST_MQTT_PASS,
            PRST_MQTT_TOPIC_CONN_STATE, /*willQos=*/1,
            /*willRetain=*/true, /*willMessage=*/"disconnected",
            /*cleanSession=*/false)) {
      serial_->println("connected");
    } else {
      serial_->print("failed, rc=");
      serial_->print(pubsub_client_.state());
      serial_->println(" try again in 2 seconds");
      delay(2000);
    }
  }
  return true;
}

bool MQTTClient::Loop() {
  if (!ReconnectIfNeeded()) {
    return false;
  }
  bool loop_ret = pubsub_client_.loop();
  if (!loop_ret) {
    serial_->printf("[mqtt_client] pubsub_client_.loop(): %d\n", loop_ret);
  }
  return loop_ret;
}

// In theory, this function should wait until all data is
// published, but it seems we're missing some messages.
// https://github.com/knolleary/pubsubclient/issues/452
bool MQTTClient::FlushAndDisconnect() {
  pubsub_client_.disconnect();
  // TODO: set up max tries so we don't loop ourselves out of battery on error.
  while (pubsub_client_.state() != -1) {
    serial_->println("[mqtt_client] Waiting for connection to be closed...");
    delay(10);
  }
  wifi_client_.stop();
  return true;
}

void MQTTClient::Publish(const char* topic, const char* payload,
                         bool retained) {
  serial_->printf("[mqtt_client] publish %s %s (retained: %d)\n", topic,
                  payload, retained);
  pubsub_client_.publish(topic, payload, retained);
  wifi_client_.flush();
}

void MQTTClient::Publish(const char* topic, double payload, bool retained) {
  String encoded_payload(payload, 4);
  Publish(topic, encoded_payload.c_str(), retained);
}

}  // namespace mqtt
}  // namespace parasite