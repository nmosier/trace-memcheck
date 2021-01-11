#include <cstdlib>

#include "log.hh"

namespace memcheck {

  const char *to_string(Error error) {
    switch (error) {
    case Error::TAINTED_BASE_REG:  return "memory access depends on uninitialized base register";
    case Error::TAINTED_INDEX_REG: return "memory access depends on uninitialized index register";
    case Error::JCC_CKSUMS_DIFFER: return "conditional checksums differ";
    case Error::TAINTED_REG:       return "read from uninitialized register";
    case Error::TAINTED_FLAGS:     return "instruction uses tainted flags";
    case Error::TAINTED_MEM:       return "read from tainted memory";
    default:
      std::abort();
    }
  }

}
