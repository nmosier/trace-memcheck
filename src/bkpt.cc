#include <cstdio>
#include <cstdlib>
#include <cassert>
#include "bkpt.hh"

user_ptr_t<uint8_t> BkptPool::alloc() {
  assert(next != mem.end<uint8_t>());
  return next++;
}
