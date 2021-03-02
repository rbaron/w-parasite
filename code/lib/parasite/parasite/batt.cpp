#include "parasite/batt.h"

#include <Arduino.h>
#include <driver/adc.h>
#include <parasite/config.h>

namespace parasite {
namespace batt {
namespace {
constexpr int kNReads = 32;
constexpr int kDelayBeforeReadMS = 1;

int ReadAnalogInput() {
  adc1_channel_t channel =
      static_cast<adc1_channel_t>(digitalPinToAnalogChannel(PRST_BM_PIN));
  // 12 bit resolution: values in [0, 4095].
  adc1_config_width(ADC_WIDTH_BIT_12);
  // Read value is divided by 3.6.
  adc1_config_channel_atten(channel, ADC_ATTEN_DB_11);
  return adc1_get_raw(channel);
}
}  // namespace

batt_read_t ReadBattVoltage() {
  double sum_raw = 0;
  for (int i = 0; i < kNReads; i++) {
    sum_raw += ReadAnalogInput();
    delay(kDelayBeforeReadMS);
  }
  double raw = sum_raw / kNReads;
  double v_in = (3.6 * raw) / (1 << 12);
  double voltage =
      (PRST_BM_R1_DIVIDER + PRST_BM_R2_DIVIDER) / PRST_BM_R2_DIVIDER * v_in;
  return {raw, voltage};
}

}  // namespace batt
}  // namespace parasite