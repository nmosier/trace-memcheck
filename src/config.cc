#include <unordered_map>
#include <cstdlib>

#include "config.hh"

Config g_conf;

bool Config::set_prediction_mode(const char *s, PredictionMode Config::*memb) {
  static const std::unordered_map<std::string, PredictionMode> map
    {{"none", PredictionMode::NONE},
     {"iclass", PredictionMode::ICLASS},
     {"iform", PredictionMode::IFORM},
     {"dir", PredictionMode::DIR},
     {"last_iclass", PredictionMode::LAST_ICLASS},
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

void Config::abort(Tracee& tracee) const {
  log->flush();
  if (gdb) {
    tracee.gdb();
  } else {
    std::abort();
  }
}
