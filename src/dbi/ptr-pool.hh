#pragma once

#include "usermem.hh"
#include "tracee.hh"

namespace dbi {

  class PointerPool {
  public:
    PointerPool(Tracee& tracee, size_t size):
      tracee(tracee),
      mem(tracee, size, PROT_READ),
      allocator(mem.begin<uintptr_t>(), mem.end<uintptr_t>())
    {}

    uintptr_t *alloc() { return allocator.alloc(1U); }

    uintptr_t *add(uintptr_t val) {
      uintptr_t *ptr = alloc();
      tracee.write(&val, sizeof(val), ptr);
      return ptr;
    }
  
  private:
    Tracee& tracee;
    UserMemory mem;
    UserAllocator<uintptr_t> allocator;
  };

}
