#pragma once

#include <vector>
#include <list>
#include <cstddef>
#include <cassert>
#include <memory>
#include <iterator>
#include <unordered_map>

extern "C" {
#include <xed/xed-interface.h>
}

#include "tracee.hh"
#include "usermem.hh"
#include "inst.hh"
#include "patch-fwd.hh"
#include "block-fwd.hh"
#include "block-pool-fwd.hh"

class Block {
public:
  enum class Kind {DIR, IND, OTH}; // treat all branches as conditional
  using InstVec = std::list<Instruction>;
  using InstIt = InstVec::iterator;

  static Block *Create(uint8_t *pc, const Tracee& tracee, BlockPool& block_pool);
  
  Kind kind() const { return kind_; }
  uint8_t *orig_addr() const { return orig_addr_; }
  uint8_t *pool_addr() const { return pool_addr_; }
  const InstVec& insts() const { return insts_; }
  const Instruction& orig_branch() const { return orig_branch_; }
  size_t size() const;

  void jump_to(void) const;
  void handle_bkpt(void);

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

