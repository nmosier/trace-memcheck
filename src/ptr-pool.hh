#pragma once

#include "usermem.hh"
#include "tracee.hh"

class PointerPool {
public:
  PointerPool(Tracee& tracee, size_t size):
    tracee(tracee), mem(tracee, size), alloc_ptr(mem.begin<uintptr_t>()) {}

  uintptr_t *alloc() {
    assert(alloc_ptr < mem.end<uintptr_t>());
    return alloc_ptr++;
  }

  uintptr_t *add(uintptr_t val) {
    uintptr_t *ptr = alloc();
    tracee.write(&val, sizeof(val), ptr);
    return ptr;
  }
  
private:
  Tracee& tracee;
  UserMemory mem;
  uintptr_t *alloc_ptr;

};
