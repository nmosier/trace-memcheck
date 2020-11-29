#include <unordered_map>

#include "config.hh"

Config g_conf;

bool Config::set_prediction_mode(const char *s, PredictionMode Config::*memb) {
  static const std::unordered_map<std::string, PredictionMode> map
    {{"none", PredictionMode::NONE},
     {"iclass", PredictionMode::ICLASS},
     {"iform", PredictionMode::IFORM},
    };

  const auto it = map.find(s);
  if (it == map.end()) {
    return false;
  } else {
    this->*memb = it->second;
    return true;
  }
}

bool Config::set_prediction_mode(const char *s) {
  return set_prediction_mode(s, &Config::prediction_mode);
}

bool Config::set_dump_jcc_info(const char *s) {
  return set_prediction_mode(s, &Config::dump_jcc_info);
}
