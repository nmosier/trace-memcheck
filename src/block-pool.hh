#pragma once

#include <iostream>
#include "usermem.hh"
#include "tracee.hh"
#include "inst.hh"

class BlockPool {
public:
  BlockPool(const Tracee& tracee, size_t size):
    tracee(tracee), mem(tracee, size), alloc_ptr(mem.begin<uint8_t>()) {}

  std::ostream& print(std::ostream& os) const;
  std::ostream& operator<<(std::ostream& os) const { return print(os); }

  uint8_t *write_inst(uint8_t *addr, Instruction& inst);

  template <typename InputIt>
  uint8_t *write_insts(uint8_t *addr, InputIt begin, InputIt end) {
    for (InputIt it = begin; it != end; ++it) {
      addr = write_inst(addr, *it);
    }
    return addr;
  }

  template <typename Container>
  uint8_t *write_insts(uint8_t *addr, Container& c) {
    return write_insts(addr, c.begin(), c.end());
  }

  uint8_t *alloc(size_t size);
  uint8_t *alloc_next(void) const { return alloc_ptr; }  
  
private:
  const Tracee& tracee;
  UserMemory mem;
  uint8_t *alloc_ptr;

};
