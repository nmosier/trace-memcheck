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
#include "ptr-pool.hh"

class Block {
public:
  using InstVec = std::list<std::unique_ptr<Blob>>;
  using InstIt = InstVec::iterator;
  using LookupBlock = Terminator::LookupBlock;
  using HandleBkptIface = Terminator::HandleBkptIface;
  using RegisterBkpt = Terminator::RegisterBkpt;
  
  static Block *Create(uint8_t *pc, const Tracee& tracee, BlockPool& block_pool,
		       PointerPool& ptr_pool, LookupBlock lb, RegisterBkpt rb);
  
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
  uint8_t *orig_addr_;
  uint8_t *pool_addr_;
  InstVec insts_; // linear basic block instructions
  Instruction orig_branch_;
  std::unique_ptr<Terminator> terminator_;

  Block(const Tracee& tracee, uint8_t *orig_addr, BlockPool& block_pool):
    tracee_(tracee), block_pool_(block_pool), orig_addr_(orig_addr) {}

  static bool classify_inst(const Instruction& inst) {
    return classify_inst(inst.xed_iclass());
  }
  static bool classify_inst(xed_iclass_enum_t iclass);

  static size_t size(const InstVec& insts);

  void handle_bkpt_branch(uint8_t *pc, const HandleBkptIface& iface);
  void handle_bkpt_branch_dir(uint8_t *pc, const HandleBkptIface& iface);
  void handle_bkpt_branch_dir_conditional(uint8_t *pc, const HandleBkptIface& iface);
  
  void handle_bkpt_branch_ind(uint8_t *pc, const HandleBkptIface& iface);
  void handle_bkpt_fallthrough(uint8_t *pc, const HandleBkptIface& iface);

  template <typename OutputIt>
  static uint8_t *transform_riprel_inst(uint8_t *pc, const Instruction& inst, OutputIt out_it,
					PointerPool& ptr_pool);

  template <typename AddInst>
  static void transform_riprel_push(uint8_t*& pc, AddInst add_inst, const Instruction& push,
				    PointerPool& ptr_pool);
};

