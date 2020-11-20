#pragma once

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

class Block {
public:
  enum class Kind {DIR, IND, OTH}; // treat all branches as conditional
  using InstVec = std::list<std::unique_ptr<Blob>>;
  using InstIt = InstVec::iterator;
  using LookupBlock = std::function<uint8_t *(uint8_t *)>;
  using PatchBlock = std::function<void (uint8_t *)>;
  using SingleStep = std::function<void (void)>;
  struct HandleBkptIface {
    LookupBlock lb;
    PatchBlock pb;
    SingleStep ss;
  };

  static Block *Create(uint8_t *pc, const Tracee& tracee, BlockPool& block_pool);
  
  Kind kind() const { return kind_; }
  uint8_t *orig_addr() const { return orig_addr_; }
  uint8_t *pool_addr() const { return pool_addr_; }
  const InstVec& insts() const { return insts_; }
  const Instruction& orig_branch() const { return orig_branch_; }

  void jump_to(void) const;

  void handle_bkpt(uint8_t *pc, const HandleBkptIface& iface);

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
#if 0
  InstVec branch_insts_;
  InstVec fallthrough_insts_;
#else
  InstVec term_insts_; // terminator instructions
#endif
  Instruction orig_branch_;
  size_t maxsize_;

  static const char *bkpt_kind_to_str(BkptKind bkpt_kind);
  static const char *kind_to_str(Kind kind);

  Block(const Tracee& tracee, uint8_t *orig_addr, BlockPool& block_pool):
    tracee_(tracee), block_pool_(block_pool), orig_addr_(orig_addr) {}

  void write(void);

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

