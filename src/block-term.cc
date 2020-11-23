#include <memory>
#include <algorithm>
#include <cassert>
#include <sys/wait.h>
#include <unordered_set>
#include "block-term.hh"
#include "util.hh"
#include "debug.h"

Terminator *Terminator::Create(BlockPool& block_pool, const Instruction& branch,
			       Tracee& tracee, const LookupBlock& lb, RegisterBkpt rb) {
  switch (branch.xed_iclass()) {
  case XED_ICLASS_CALL_NEAR:
    switch (branch.xed_iform()) {
    case XED_IFORM_CALL_NEAR_RELBRd:
      return new DirCallTerminator(block_pool, branch, tracee, lb);
    default:
      return new IndTerminator(block_pool, branch, tracee, lb, rb);
    }

  case XED_ICLASS_JMP:
    switch (branch.xed_iform()) {
    case XED_IFORM_JMP_RELBRd:
      return new DirJmpTerminator(block_pool, branch, tracee, lb);
    default:
      return new IndTerminator(block_pool, branch, tracee, lb, rb);
    }

  case XED_ICLASS_RET_NEAR:
    return new IndTerminator(block_pool, branch, tracee, lb, rb);

  default: // XED_ICLASS_JCC
    return new DirJccTerminator(block_pool, branch, tracee, lb, rb);
  }
}

Terminator::Terminator(BlockPool& block_pool, size_t size,
		       Tracee& tracee, const LookupBlock& lb):
  addr_(block_pool.peek()), size_(size), buf_(size), tracee_(tracee), lb_(lb)
{
  block_pool.alloc(size_);
}

uint8_t *Terminator::write(uint8_t *addr, const uint8_t *data_in, size_t count) {
  const size_t offset = addr - addr_;
  auto data_out = buf_.begin() + offset;
  assert(buf_.begin() <= data_out && data_out + count <= buf_.end());
  std::copy_n(data_in, count, data_out);
  return addr + count;
}

void Terminator::flush() const {
  tracee_.write(buf_.data(), buf_.size(), addr());
}

DirCallTerminator::DirCallTerminator(BlockPool& block_pool, const Instruction& call,
				     Tracee& tracee, const LookupBlock& lb):
  Terminator(block_pool, DIR_CALL_SIZE, tracee, lb)
{
  assert(call.xed_iform() == XED_IFORM_CALL_NEAR_RELBRd);
  
  uint8_t *orig_dst_addr = call.branch_dst();
  uint8_t *new_dst_addr = lb(orig_dst_addr);
  uint8_t *fallthru_addr = call.after_pc();
  
  /* push [L0]
   * jmp <dst>
   * L0: .dq <ra>
   */

  /* assign addresses */
  uint8_t *push_addr = addr();
  uint8_t *jmp_addr = push_addr + Instruction::push_mem_len;
  uint8_t *ptr_addr = jmp_addr + Instruction::jmp_relbrd_len;

  /* create blobs */
  const auto push_inst = Instruction::push_mem(push_addr, ptr_addr);
  const auto jmp_inst = Instruction::jmp_relbrd(jmp_addr, new_dst_addr);
  const auto ptr_blob = Pointer(ptr_addr, fallthru_addr);

  /* write blobs */
  write(push_inst);
  write(jmp_inst);
  write(ptr_blob);

  /* flush */
  flush();
}

DirJmpTerminator::DirJmpTerminator(BlockPool& block_pool, const Instruction& jmp,
				   Tracee& tracee, const LookupBlock& lb):
  Terminator(block_pool, DIR_JMP_SIZE, tracee, lb)
{
  assert(jmp.xed_iform() == XED_IFORM_JMP_RELBRd);

  uint8_t *orig_dst_addr = jmp.branch_dst();
  uint8_t *new_dst_addr = lb(orig_dst_addr);

  /* jmp <dst> */

  uint8_t *jmp_addr = addr();
  const auto jmp_inst = Instruction::jmp_relbrd(jmp_addr, new_dst_addr);
  write(jmp_inst);
  flush();
}

DirJccTerminator::DirJccTerminator(BlockPool& block_pool, const Instruction& jcc,
				   Tracee& tracee, const LookupBlock& lb,
				   const RegisterBkpt& rb):
  Terminator(block_pool, DIR_JCC_SIZE, tracee, lb), orig_dst(jcc.branch_dst()),
  orig_fallthru(jcc.after_pc())
{
  const std::unordered_set<int> jcc_iclasses = {XED_ICLASS_JB, XED_ICLASS_JBE, XED_ICLASS_JL, XED_ICLASS_JLE, XED_ICLASS_JNB, XED_ICLASS_JNBE, XED_ICLASS_JNL, XED_ICLASS_JNLE, XED_ICLASS_JNO, XED_ICLASS_JNP, XED_ICLASS_JNS, XED_ICLASS_JNZ, XED_ICLASS_JO, XED_ICLASS_JP, XED_ICLASS_JS, XED_ICLASS_JZ};
  assert(jcc_iclasses.find(jcc.xed_iclass()) != jcc_iclasses.end());
  
  /* jcc L0
   * bkpt (padded for JMP_RELBRd)
   * L0: bkpt
   */

  /* assign addresses */
  uint8_t *jcc_addr = addr();
  fallthru_bkpt_addr = jcc_addr + Instruction::jcc_relbrd_len;
  jcc_bkpt_addr = fallthru_bkpt_addr + Instruction::jmp_relbrd_len;
  
  /* create blobs */
  jcc_inst = jcc; jcc_inst.relocate(jcc_addr); jcc_inst.retarget(jcc_bkpt_addr); // TODO: optim
  const auto fallthru_bkpt_inst = Instruction::int3(fallthru_bkpt_addr);
  const auto jcc_bkpt_inst = Instruction::int3(jcc_bkpt_addr);

  /* write blobs */
  write(jcc_inst);
  write(fallthru_bkpt_inst);
  write(jcc_bkpt_inst);

  /* flush */
  flush();

  /* register breakpoints */
  rb(fallthru_bkpt_addr, make_callback(this, &DirJccTerminator::handle_bkpt_fallthru));
  rb(jcc_bkpt_addr, make_callback(this, &DirJccTerminator::handle_bkpt_jcc));
}

void DirJccTerminator::handle_bkpt_fallthru() {
  /* replace fallthru bkpt with jump */
  uint8_t *new_fallthru = lookup_block(orig_fallthru);
  const auto fallthru_inst = Instruction::jmp_relbrd(fallthru_bkpt_addr, new_fallthru);
  write(fallthru_inst);
  flush();
  tracee().set_pc(new_fallthru);
}

void DirJccTerminator::handle_bkpt_jcc() {
  /* replace jump instruction */
  uint8_t *new_dst = lookup_block(orig_dst);
  jcc_inst.retarget(new_dst);
  write(jcc_inst);
  tracee().set_pc(new_dst);
  flush();
}

IndTerminator::IndTerminator(BlockPool& block_pool, const Instruction& branch,
			     Tracee& tracee, const LookupBlock& lb, const RegisterBkpt& rb):
  Terminator(block_pool, IND_SIZE, tracee, lb), orig_branch_addr(branch.pc())
{
  /* just bkpt */
  uint8_t *bkpt_addr = addr();
  const auto bkpt_inst = Instruction::int3(bkpt_addr);
  write(bkpt_inst);
  flush();

  /* register bkpt */
  rb(bkpt_addr, make_callback(this, &IndTerminator::handle_bkpt));
}

void IndTerminator::handle_bkpt() {
  /* 1. jump to original branch
   * 2. single step
   * 3. lookup block for new pc
   * 4. jump to block
   */
  
  /* 1 */
  tracee().set_pc(orig_branch_addr);

  /* 2 */
  const int status = tracee().singlestep();
  (void) status;
  assert(WIFSTOPPED(status));
  assert(WSTOPSIG(status) == SIGTRAP);

  /* 3 */
  uint8_t *new_addr = lookup_block(tracee().get_pc());

  /* 4 */
  tracee().set_pc(new_addr);
}


RetTerminator::RetTerminator(BlockPool& block_pool, const Instruction& ret, Tracee& tracee,
			     const LookupBlock& lb, const RegisterBkpt& rb):
  Terminator(block_pool, RET_SIZE, tracee, lb)
{
  const uint8_t sizes[] = {4, 1, 7, 7, 2, 7, 1, 3, 2, 4, 1, 4, 1, 1};
  constexpr auto ninsts = arrlen(sizes);

  /* assign addresses */
  uint8_t *addrs[ninsts];
  uint8_t *it = addr();
  for (unsigned i = 0; i < ninsts; ++i) {
    addrs[i] = it;
    it += sizes[i];
  }

  /* create instructions */
  Instruction insts[ninsts];
  insts[0] = Instruction(addrs[0], {0x48, 0x87, 0x04, 0x24}); // xchg qword [rsp], rax
  insts[1] = Instruction(addrs[1], {0x51}); // push rax
  // TODO
  abort();
  (void) insts;
}
