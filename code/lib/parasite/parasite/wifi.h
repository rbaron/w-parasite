#ifndef _PARASITE_WIFI_H_
#define _PARASITE_WIFI_H_

#include <WiFi.h>

namespace parasite {
namespace wifi {

wl_status_t SetupWiFi(Stream* serial);

void DisconnectWiFi();

}  // namespace wifi
}  // namespace parasite
#endif  // _PARASITE_WIFI_H_