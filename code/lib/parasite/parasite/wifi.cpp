#include "parasite/wifi.h"

#include <WiFi.h>
#include <esp_wifi.h>

#include "parasite/config.h"

namespace parasite {
namespace wifi {

namespace {
constexpr int kMaxWaitForConnectionMS = 1000;
constexpr int kConnectionLoopDelay = 10;
constexpr int kTries = 3;

// Calls WiFi.begin() and waits for kMaxWaitForConnectionMS
// until the connection is stablished. If no connection is
// made in that time, return WiFi.status().
wl_status_t BeginAndWaitForConnection(Stream* serial) {
  int delayed = 0;
  bool started = WiFi.begin(PRST_WIFI_SSID, PRST_WIFI_PASS);
  serial->printf("[wifi] WiFi.begin(): %d\n", started);
  do {
    serial->printf("[wifi] WiFi.status(): %d\n", WiFi.status());
    delay(kConnectionLoopDelay);
    delayed += kConnectionLoopDelay;

    if (delayed > kMaxWaitForConnectionMS) {
      serial->printf(
          "[wifi] Waited for too long. Exiting connection attempt. "
          "WiFi.status(): %d\n",
          WiFi.status());
      return WiFi.status();
    }
  } while (WiFi.status() != WL_CONNECTED);
  return WiFi.status();
}

}  // namespace

wl_status_t SetupWiFi(Stream* serial) {
  serial->printf("[wifi] Setting up WiFi. Connecting to %s...\n",
                 PRST_WIFI_SSID);
  WiFi.disconnect();
  int tries = 0;
  wl_status_t status = WiFi.status();
  do {
    if (++tries > kTries) {
      serial->printf("[wifi] Exceeded number of tries. Bailing out.\n");
      return status;
    }
    serial->printf("[wifi] Attempt #%d...\n", tries);
    status = BeginAndWaitForConnection(serial);
  } while (status != WL_CONNECTED);

#ifdef PRST_DEBUG
  serial->println("Connected!");
  serial->print("IP address: ");
  serial->println(WiFi.localIP());
  serial->print("ESP Mac Address: ");
  serial->println(WiFi.macAddress());
  serial->print("Subnet Mask: ");
  serial->println(WiFi.subnetMask());
  serial->print("Gateway IP: ");
  serial->println(WiFi.gatewayIP());
  serial->print("DNS: ");
  serial->println(WiFi.dnsIP());
  serial->print("BSSID: ");
  serial->println(WiFi.BSSIDstr());
  serial->print("Channel: ");
  serial->println(WiFi.channel());
#endif

  return WiFi.status();
}

void DisconnectWiFi() {
  WiFi.disconnect();
  // WiFi.mode(WIFI_OFF);
  // esp_wifi_stop();
}

}  // namespace wifi
}  // namespace parasite