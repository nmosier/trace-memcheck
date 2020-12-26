#pragma once

#include <iostream>

#include "config.hh"

namespace memcheck {

  enum class Error {
    TAINTED_BASE_REG,
    TAINTED_INDEX_REG,
    JCC_CKSUMS_DIFFER,
    TAINTED_REG,
    TAINTED_FLAGS,
  };

  const char *to_string(Error error);
  inline std::ostream& operator<<(std::ostream& os, Error error) { return os << to_string(error); }

  
  inline std::ostream& log(std::ostream& os = g_conf.log()) {
    return os << "memcheck: ";
  }

  inline std::ostream& log(const char *label, std::ostream& os = g_conf.log()) {
    return log(os) << label << ": ";
  }

  inline std::ostream& warning(std::ostream& os = g_conf.log()) { return log("warning", os); }

  template <typename... Args>
  inline std::ostream& warning(Error warning, Args&&... args) {
    return warning(args...) << warning << "\n";
  }
  
  inline std::ostream& error(std::ostream& os = g_conf.log()) { return log("error", os); }

  template <typename... Args>
  inline std::ostream& error(Error err, Args&&... args) {
    return error(args...) << err << "\n";
  }

  inline std::ostream& fatal_error(std::ostream& os = g_conf.log()) {
    return log("fatal_error", os);
  }

  inline std::ostream& internal_error(std::ostream& os = g_conf.log()) {
    return log("internal error", os);
  }

  inline std::ostream& log_signal(std::ostream& os = g_conf.log()) {
    return log("signal", os);
  }

  inline std::ostream& log_stub(std::ostream& os = g_conf.log()) {
    return log("stub", os);
  }
  
}
