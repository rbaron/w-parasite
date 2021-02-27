#ifndef _PARASITE_BATT_H_
#define _PARASITE_BATT_H_

namespace parasite {
namespace batt {

struct batt_read_t {
  double raw;
  double voltage;
};

batt_read_t ReadBattVoltage();

}  // namespace batt
}  // namespace parasite

#endif  // _PARASITE_BATT_H_