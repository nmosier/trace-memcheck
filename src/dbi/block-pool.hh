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
      tracee(tracee), mem(tracee, size, PROT_READ | PROT_EXEC),
      allocator(mem.begin<uint8_t>(), mem.end<uint8_t>())
    {}

    std::ostream& print(std::ostream& os) const;
    std::ostream& operator<<(std::ostream& os) const { return print(os); }

    uint8_t *write_inst(uint8_t *addr, Blob& inst);

    template <typename InputIt>
    uint8_t *write_insts(uint8_t *addr, InputIt begin, InputIt end) {
      for (InputIt it = begin; it != end; ++it) {
	addr = write_inst(addr, **it);
      }
      return addr;
    }

    template <typename Container>
    uint8_t *write_insts(uint8_t *addr, Container& c) {
      return write_insts(addr, c.begin(), c.end());
    }

    uint8_t *peek() const { return allocator.peek(); }
  
    template <typename Size>
    uint8_t *alloc(Size size) { return allocator.alloc(size); }

    // TODO: Remove these?
    uint8_t *begin() const { return mem.begin<uint8_t>(); }
    uint8_t *end() const { return mem.end<uint8_t>(); }
  
  private:
    Tracee& tracee;
    UserMemory mem;
    UserAllocator<uint8_t> allocator;
  };

}
