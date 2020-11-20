#include <memory>
#include <cassert>
#include "block-term.hh"

Terminator::Terminator(uint8_t *addr, const Instruction& branch, size_t basesize):
  addr_(addr), insts_(), orig_branch_(branch) {
  
  /* check if call */
  if (orig_branch_.call_to_jmp()) {    
    /* add push to ptr */
    uint8_t *fallthru_pc = branch.after_pc();
    uint8_t *push_inst_addr = addr;
    addr += Instruction::push_mem_len;
    uint8_t *push_ptr_addr = addr + basesize;
    insts_begin_ = insts_.insert(insts_.begin(), std::make_unique<Instruction>
				 (Instruction::push_mem(push_inst_addr, push_ptr_addr)));
    insts_end_ = insts_.insert(insts_.end(), std::make_unique<Pointer>(push_ptr_addr, fallthru_pc));
    
    size_ = basesize + Instruction::push_mem_len + sizeof(void *);
  } else {
    /* create null begin for addr reference */
    size_ = basesize;
    insts_begin_ = insts_.insert(insts_.begin(), std::make_unique<NullBlob>(addr));
    insts_end_ = insts_.insert(insts_.end(), std::make_unique<NullBlob>(addr + size_));
  }
}

Terminator::InstIt Terminator::erase(InstIt it) {
  return insts_.erase(it, insts_end_);
}

Terminator::InstIt Terminator::insert(InstIt it, std::unique_ptr<Blob> blob) {
  assert(it != insts_.end());
  assert(blob->after_pc() < (*insts_end_)->pc());
  auto insert_it = erase(it);
  return insts_.insert(insert_it, std::move(blob));
}

DirectTerminator::DirectTerminator(uint8_t *addr, const Instruction& branch):
  Terminator(addr, branch, basesize),

{
  
}
