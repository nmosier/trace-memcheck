#pragma once

#include "usermem.hh"
#include "tracee.hh"
#include "tracees.hh"

namespace dbi {

  class PointerPool {
  public:
    PointerPool() { mark_bad(); }
    PointerPool(Tracees& tracees, size_t size) { open(tracees, size); }

    bool good() const { return tracees != nullptr; }
    operator bool() const { return good(); }

    void open(Tracees& tracees_, size_t size) {
      tracees = &tracees_;
      mem.open(tracees->front().tracee, size, PROT_READ);
      allocator.open(mem.begin<uintptr_t>(), mem.end<uintptr_t>());
    }

    uintptr_t *alloc() { return allocator.alloc(1U); }

    uintptr_t *add(uintptr_t val) {
      uintptr_t *ptr = alloc();
      std::for_each(tracees->begin(), tracees->end(), [&] (auto& tracee_pair) {
	  tracee_pair.tracee.write(&val, sizeof(val), ptr);
	});
      return ptr;
    }
  
  private:
    Tracees *tracees;
    UserMemory mem;
    UserAllocator<uintptr_t> allocator;

    void mark_bad() { tracees = nullptr; }
  };

}
