#pragma once

class Block;
class BlockPool;

#include <vector>
#include <cstddef>
#include <cassert>

extern "C" {
#include <xed/xed-interface.h>
}

#include "tracee.hh"
#include "usermem.hh"
#include "inst.hh"


class Block {
public:
  using InstVec = std::vector<Instruction>;
  enum class Kind {DIR, IND, OTH}; // treat all branches as conditional

  static Block Create(uint8_t *pc, const Tracee& tracee, BlockPool& block_pool, uint8_t **next_addr);
  
  Kind kind() const { return kind_; }
  uint8_t *orig_addr() const { return orig_addr_; }
  uint8_t *pool_addr() const { return pool_addr_; }
  const InstVec& insts() const { return insts_; }
  const Instruction& orig_branch() const { return orig_branch_; }
  size_t size() const;

  // Block(const Block& other): tracee_(other.tracee_), block_pool_(other.block_pool_)
  
private:
  const Tracee& tracee_;
  BlockPool& block_pool_;
  Kind kind_;
  uint8_t *orig_addr_;
  uint8_t *pool_addr_;
  InstVec insts_;
  Instruction orig_branch_;
  bool branch_patched = false;
  bool fallthrough_patched = false;

  Block(const Tracee& tracee, uint8_t *orig_addr, BlockPool& block_pool):
    tracee_(tracee), block_pool_(block_pool), orig_addr_(orig_addr) {}

  void write(void) const;

  static Kind classify_inst(const Instruction& inst) {
    return classify_inst(inst.xed_iclass(), inst.xed_iform());
  }
  static Kind classify_inst(xed_iclass_enum_t iclass, xed_iform_enum_t iform);
};

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
