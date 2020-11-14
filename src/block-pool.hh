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

  uint8_t *add_inst(Instruction& inst); // TODO: write this function
  
  template <typename InputIt>
  uint8_t *add_insts(InputIt begin, InputIt end) {
    uint8_t *block_addr = alloc_next();
    for (InputIt it = begin; it != end; ++it) {
      add_inst(*it);
    }
    return block_addr;
  }

  uint8_t *alloc(size_t size);
  uint8_t *alloc_next(void) const { return alloc_ptr; }  
  
private:
  const Tracee& tracee;
  UserMemory mem;
  uint8_t *alloc_ptr;

};
