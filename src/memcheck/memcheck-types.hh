#pragma once

#include <cstdint>

namespace memcheck {

  typedef uint8_t fill_t;
  typedef const fill_t *fill_ptr_t;

  constexpr unsigned SHADOW_STACK_SIZE = 128;

}
