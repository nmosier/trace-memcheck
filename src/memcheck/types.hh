#pragma once

#include <cstdint>
#include <unordered_map>

namespace memcheck {

  typedef uint8_t fill_t;
  typedef const fill_t *fill_ptr_t;

  constexpr unsigned SHADOW_STACK_SIZE = 128;

  using dbi::BkptCallback;
  using TransformerInfo = dbi::Patcher::TransformerInfo;

  // using FillMap = std::unordered_map<pid_t, fill_t>;
  
}
