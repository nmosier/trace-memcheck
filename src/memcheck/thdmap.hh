#pragma once

#include <unordered_map>

#include "cksum.hh"
#include "state.hh"

namespace memcheck {

  struct ThreadEntry {
    fill_t fill;
    FlagChecksum bkpt_cksum;
    uint32_t incore_cksum;
    State state;
  };
  
  using ThreadMap = std::unordered_map<pid_t, ThreadEntry>;
  
}
