#pragma once

#include <iostream>
#include <cassert>
#include "usermem.hh"

namespace dbi {

  class Tracee;
  class Blob;

  class BlockPool {
  public:
    BlockPool(Tracee& tracee, size_t size):
      mem(tracee, size, PROT_READ | PROT_EXEC),
      allocator(mem.begin<uint8_t>(), mem.end<uint8_t>())
    {}

    uint8_t *peek() const { return allocator.peek(); }
  
    template <typename Size>
    uint8_t *alloc(Size size) { return allocator.alloc(size); }

    // TODO: Remove these?
    uint8_t *begin() const { return mem.begin<uint8_t>(); }
    uint8_t *end() const { return mem.end<uint8_t>(); }
  
  private:
    UserMemory mem;
    UserAllocator<uint8_t> allocator;
  };

}
