#include <memory>
#include <algorithm>
#include <cassert>
#include "block-term.hh"

Terminator::Terminator(uint8_t *addr, const Instruction& branch, size_t basesize):
  addr_(addr), orig_branch_(branch) {

  if (orig_branch_.call_to_jmp()) {
    size_ = basesize + Instruction::push_mem_len + sizeof(void *);
    buf_ = Buf(size_);

    uint8_t *fallthru_pc = branch.after_pc();
    uint8_t *push_inst_addr = addr_;
    uint8_t *push_ptr_addr = addr_ + Instruction::push_mem_len + basesize;

    buf_begin_ = Instruction::push_mem(push_inst_addr, push_ptr_addr).write(&buf_[0]);
    buf_end_ = buf_begin_ + basesize;
    Pointer(push_ptr_addr, fallthru_pc).write(buf_end_);
    baseaddr_ = addr_ + Instruction::push_mem_len;
  } else {
    size_ = basesize;
    baseaddr_ = addr_;
    buf_ = Buf(size_);
    buf_begin_ = static_cast<uint8_t *>(buf_.data());
    buf_end_ = static_cast<uint8_t *>(buf_.data() + size_);
  }
}

uint8_t *Terminator::write(uint8_t *addr, const uint8_t *data_in, size_t count) {
  const size_t offset = addr - addr_;
  uint8_t *data_out = &buf_[0] + offset;
  assert(buf_begin() <= data_out && data_out + count <= buf_end());
  return std::copy_n(data_in, count, data_out);
}

size_t DirectTerminator::basesize() {
  return 64; // TODO: Make this not arbitrary
}

DirectTerminator::DirectTerminator(uint8_t *addr, const Instruction& branch):
  Terminator(addr, branch, basesize())
{
  init();
}

void DirectTerminator::init() {
  /* j{cc} L1
   * bkpt // fallthru
   * L1: bkpt // jmp bkpt
   */

  uint8_t *addr_it = baseaddr();

  branch_bkpt = addr_it + 2 * Instruction::max_inst_len;
  
  branch_ = orig_branch();
  branch_.relocate(addr_it);
  branch_.retarget(branch_bkpt);
  addr_it = write(branch_);
  
  /* fallthru bkpt */
  fallthru_ = Instruction(addr_it, Instruction::Data {0xcc});
  addr_it = write(fallthru_);

  /* branch bkpt */
  write(branch_bkpt, 0xcc);
}

void DirectTerminator::handle_bkpt(uint8_t *bkpt_addr, const Block::HandleBkptIface& iface) {
  if (bkpt_addr == branch_bkpt) {
    /* update branch instruction */
    uint8_t *branch_dst = iface.lb(orig_branch().branch_dst());
    branch_.retarget(branch_dst);
    uint8_t *addr_it = write(branch_);

    /* rewrite fallthrough instruction */
    fallthru_.relocate(addr_it);
    addr_it = write(fallthru_);
    
    branch_bkpt = nullptr;
    
  } else {
    assert(bkpt_addr == fallthru_.pc());

    uint8_t *fallthru_dst = orig_branch().after_pc();
    fallthru_ = Instruction::jmp_relbrd(fallthru_.pc(), fallthru_dst);
    write(fallthru_);
  }
}

