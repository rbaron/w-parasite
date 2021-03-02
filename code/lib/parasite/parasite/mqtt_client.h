#ifndef _PARASITE_MQTT_CLIENT_H_
#define _PARASITE_MQTT_CLIENT_H_

#include <PubSubClient.h>
#include <WiFiClient.h>

#include "parasite/config.h"

namespace parasite {
namespace mqtt {

class MQTTClient {
 public:
  MQTTClient(Stream* serial) : serial_(serial) {
    broker_ip_.fromString(PRST_MQTT_BROKER_IP);
    pubsub_client_.setServer(broker_ip_, PRST_MQTT_BROKER_PORT);
    pubsub_client_.setClient(wifi_client_);
    pubsub_client_.setSocketTimeout(PRST_MQTT_CONN_TIMEOUT);
  }

  // Tries to reconnect if needed
  bool Loop();
  bool FlushAndDisconnect();

  // Original string-based publishing.
  void Publish(const char* topic, const char* payload, bool retained);
  // Overload for doubles in order to set the precision.
  void Publish(const char* topic, double payload, bool retained);
  // For integral types.
  template <typename I>
  void Publish(const char* topic, I payload, bool retained) {
    String encoded_payload(payload);
    Publish(topic, encoded_payload.c_str(), retained);
  }

 private:
  bool ReconnectIfNeeded();
  WiFiClient wifi_client_;
  IPAddress broker_ip_;
  PubSubClient pubsub_client_;
  Stream* serial_;
};

}  // namespace mqtt
}  // namespace parasite
#endif  // _PARASITE_MQTT_CLIENT_H_