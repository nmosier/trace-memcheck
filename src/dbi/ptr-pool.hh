#pragma once

#include "usermem.hh"
#include "tracee.hh"

namespace dbi {

  class PointerPool {
  public:
    PointerPool(Tracees& tracees, size_t size):
      tracees(tracees),
      mem(tracees.front(), size, PROT_READ),
      allocator(mem.begin<uintptr_t>(), mem.end<uintptr_t>())
    {}

    uintptr_t *alloc() { return allocator.alloc(1U); }

    uintptr_t *add(uintptr_t val) {
      uintptr_t *ptr = alloc();
      std::for_each(tracees.begin(), tracees.end(), [&] (auto& tracee) {
	tracee.write(&val, sizeof(val), ptr);
      });
      return ptr;
    }
  
  private:
    Tracees& tracees;
    UserMemory mem;
    UserAllocator<uintptr_t> allocator;
  };

}
