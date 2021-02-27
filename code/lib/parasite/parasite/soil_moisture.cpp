#include "parasite/soil_moisture.h"

#include <Arduino.h>

#include "parasite/config.h"

namespace parasite {
namespace soil_moisture {
namespace {
constexpr int kDelayBeforeRead = 10;
constexpr int kSoilSenseAir = PRST_SS_AIR_RAW;
constexpr int kSoilSenseWater = PRST_SS_WATER_RAW;

double MoistPercent(int raw) {
  double percent = static_cast<double>(raw - kSoilSenseWater) /
                   (kSoilSenseAir - kSoilSenseWater);
  return std::min(1.0, std::max(0.0, percent));
}
}  // namespace

soil_moisture_read_t ReadSoilMoisture() {
  delay(kDelayBeforeRead);
  const int n = 1;
  int sum = 0;
  for (int i = 0; i < n; i++) {
    sum += analogRead(PRST_SS_PIN_SOIL_MOISTURE);
  }
  int avg_raw = sum / n;
  return {avg_raw, MoistPercent(avg_raw)};
}

}  // namespace soil_moisture
}  // namespace parasite