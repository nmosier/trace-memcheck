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
#include "inst.hh"
#include "patch-fwd.hh"
#include "block-fwd.hh"
#include "block-pool-fwd.hh"
#include "block-term.hh"
#include "ptr-pool.hh"
#include "tmp-mem.hh"

class Block {
public:
  using InstVec = std::list<std::unique_ptr<Instruction>>;
  using InstIt = InstVec::iterator;
  using LookupBlock = Terminator::LookupBlock;
  using ProbeBlock = Terminator::ProbeBlock;
  using RegisterBkpt = Terminator::RegisterBkpt;
  using InsertBlock = std::function<void (uint8_t *, Block *)>;
  using Writer = std::function<uint8_t *(Blob&)>;
  using Transformer = std::function<void (uint8_t *, Instruction& inst, const Writer&)>;

  static bool Create(uint8_t *orig_addr, Tracee& tracee, BlockPool& block_pool,
		     PointerPool& ptr_pool, TmpMem& tmp_mem, const LookupBlock& lb,
		     const ProbeBlock& pb, const RegisterBkpt& rb, const ReturnStackBuffer& rsb,
		     const InsertBlock& ib, const Transformer& transformer);
    
  uint8_t *orig_addr() const { return orig_addr_; }
  uint8_t *pool_addr() const { return pool_addr_; }

  void jump_to(void) const;

private:
  Tracee& tracee_;
  BlockPool& block_pool_;
  uint8_t *orig_addr_;
  uint8_t *pool_addr_;
  std::unique_ptr<Terminator> terminator_;

  Block(Tracee& tracee, uint8_t *orig_addr, BlockPool& block_pool):
    tracee_(tracee), block_pool_(block_pool), orig_addr_(orig_addr) {}

  static bool classify_inst(const Instruction& inst) {
    return classify_inst(inst.xed_iclass());
  }
  static bool classify_inst(xed_iclass_enum_t iclass);

  template <typename Append>
  static void transform_riprel_inst(uint8_t *& pc, const Append& append, const Instruction& inst,
				    PointerPool& ptr_pool, TmpMem& tmp_mem);
  
  template <typename Append>
  static void transform_riprel_push(uint8_t *& pc, const Append& append, const Instruction& push,
				    PointerPool& ptr_pool);
};

