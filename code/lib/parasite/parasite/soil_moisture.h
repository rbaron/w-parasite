#ifndef _PARASITE_SOIL_MOISTURE_H_
#define _PARASITE_SOIL_MOISTURE_H_

namespace parasite {
namespace soil_moisture {

struct soil_moisture_read_t {
  int raw;
  double percentage;
};

soil_moisture_read_t ReadSoilMoisture();

}  // namespace soil_moisture
}  // namespace parasite

#endif  // _PARASITE_SOIL_MOISTURE_H_