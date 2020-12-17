#pragma once

#include <iostream>
#include <cassert>
#include "usermem.hh"

class Tracee;
class Blob;

class BlockPool {
public:
  BlockPool(Tracee& tracee, size_t size):
    tracee(tracee), mem(tracee, size, PROT_READ | PROT_EXEC), alloc_ptr(mem.begin<uint8_t>()) {}

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

  uint8_t *alloc(size_t size) {
    assert(alloc_ptr + size <= mem.end<uint8_t>());
    uint8_t *ptr = alloc_ptr;
    alloc_ptr += size;
    return ptr;
  }
  uint8_t *peek(void) const { return alloc_ptr; }

  uint8_t *begin() const { return mem.begin<uint8_t>(); }
  uint8_t *end() const { return mem.end<uint8_t>(); }
  
private:
  Tracee& tracee;
  UserMemory mem;
  uint8_t *alloc_ptr;

};

