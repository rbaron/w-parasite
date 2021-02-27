#include "parasite/pwm.h"

#include <Arduino.h>

#include "parasite/config.h"

namespace parasite {
namespace pwm {

void StartPWM() {
  ledcSetup(PRST_PWM_CHANNEL, PRST_PWM_FREQ, PRST_PWM_RESOLUTION);
  ledcAttachPin(PRST_PWM_PIN, PRST_PWM_CHANNEL);
  ledcWrite(PRST_PWM_CHANNEL, PRST_PWM_DUTY_CYCLE);

  // Enable fast discharge.
  pinMode(PRST_PWM_PIN_FAST_DISCHARGE_PIN, OUTPUT);
  digitalWrite(PRST_PWM_PIN_FAST_DISCHARGE_PIN, HIGH);
}

void StopPWM() {
  // Stop PWM.
  ledcDetachPin(PRST_PWM_PIN);

  // Stop fast discharge cycle.
  digitalWrite(PRST_PWM_PIN_FAST_DISCHARGE_PIN, LOW);
}

}  // namespace pwm
}  // namespace parasite