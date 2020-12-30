#pragma once

#include <iostream>
#include <cassert>
#include "usermem.hh"

namespace dbi {

  class Tracee;
  class Blob;

  class BlockPool {
  public:
    BlockPool() {}
    BlockPool(Tracee& tracee, size_t size) { open(tracee, size); }

    bool good() const {
      assert(mem.good() == allocator.good());
      return mem.good();
    }
    operator bool() const { return good(); }

    void open(Tracee& tracee, size_t size) {
      mem.open(tracee, size, PROT_READ | PROT_EXEC);
      allocator.open(mem.begin<uint8_t>(), mem.end<uint8_t>());
    }
    
    void close() {
      mem.close();
      allocator.close();
    }
    
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
