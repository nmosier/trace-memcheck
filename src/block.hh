#pragma once

class Block;

#include <vector>
#include <list>
#include <cstddef>
#include <cassert>
#include <memory>
#include <iterator>
#include <unordered_map>
#include <functional>

extern "C" {
#include <xed/xed-interface.h>
}

#include "tracee.hh"
#include "usermem.hh"
#include "inst.hh"
#include "patch-fwd.hh"
#include "block-fwd.hh"
#include "block-pool-fwd.hh"
#include "block-term.hh"

class Block {
public:
  enum class Kind {DIR, IND, OTH}; // treat all branches as conditional
  using InstVec = std::list<std::unique_ptr<Blob>>;
  using InstIt = InstVec::iterator;
  using LookupBlock = Terminator::LookupBlock;
  using HandleBkptIface = Terminator::HandleBkptIface;
  
  static Block *Create(uint8_t *pc, const Tracee& tracee, BlockPool& block_pool, LookupBlock lb);
  
  Kind kind() const { return kind_; }
  uint8_t *orig_addr() const { return orig_addr_; }
  uint8_t *pool_addr() const { return pool_addr_; }
  const InstVec& insts() const { return insts_; }
  const Instruction& orig_branch() const { return orig_branch_; }

  void jump_to(void) const;

  template <typename... Args>
  void handle_bkpt(Args&&... args) { terminator_->handle_bkpt(args...); }

  /**
   * Check whether branch instruction *might* be conditional.
   * @return whether branch instruction is conditional with potential false positives
   */
  bool may_have_conditional_branch(void) const;
  
private:
  const Tracee& tracee_;
  BlockPool& block_pool_;
  Kind kind_;
  uint8_t *orig_addr_;
  uint8_t *pool_addr_;
  InstVec insts_; // linear basic block instructions
  Instruction orig_branch_;
  std::unique_ptr<Terminator> terminator_;

  static const char *kind_to_str(Kind kind);

  Block(const Tracee& tracee, uint8_t *orig_addr, BlockPool& block_pool):
    tracee_(tracee), block_pool_(block_pool), orig_addr_(orig_addr) {}

  void write_insts();

  static Kind classify_inst(const Instruction& inst) {
    return classify_inst(inst.xed_iclass(), inst.xed_iform());
  }
  static Kind classify_inst(xed_iclass_enum_t iclass, xed_iform_enum_t iform);

  static size_t size(const InstVec& insts);

  void handle_bkpt_branch(uint8_t *pc, const HandleBkptIface& iface);
  void handle_bkpt_branch_dir(uint8_t *pc, const HandleBkptIface& iface);
  void handle_bkpt_branch_dir_conditional(uint8_t *pc, const HandleBkptIface& iface);
  
  void handle_bkpt_branch_ind(uint8_t *pc, const HandleBkptIface& iface);
  void handle_bkpt_fallthrough(uint8_t *pc, const HandleBkptIface& iface);

  bool transform_call_to_jmp(uint8_t *pc, InstVec::iterator branch_it);

  void single_step(void);
  
#if 0
  uint8_t *branch_addr(void) const { return branch_insts_.front().addr(); }
  uint8_T *fallthrough_addr(void) const { return fallthrough_intss_.front().addr(); }
#endif
};

