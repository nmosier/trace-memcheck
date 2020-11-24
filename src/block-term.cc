#include <memory>
#include <algorithm>
#include <cassert>
#include <sys/wait.h>
#include <unordered_set>
#include "block-term.hh"
#include "util.hh"
#include "debug.h"

Terminator *Terminator::Create(BlockPool& block_pool, PointerPool& ptr_pool,
			       const Instruction& branch, Tracee& tracee,
			       const LookupBlock& lb, const ProbeBlock& pb, const RegisterBkpt& rb,
			       const ReturnStackBuffer& rsb) {
  switch (branch.xed_iclass()) {
  case XED_ICLASS_CALL_NEAR:
    switch (branch.xed_iform()) {
    case XED_IFORM_CALL_NEAR_RELBRd:
      return new CallDirTerminator(block_pool, ptr_pool, branch, tracee, lb, pb, rb, rsb);
    default:
      return new CallIndTerminator(block_pool, ptr_pool, branch, tracee, lb, pb, rb, rsb);
    }

  case XED_ICLASS_JMP:
    switch (branch.xed_iform()) {
    case XED_IFORM_JMP_RELBRd:
    case XED_IFORM_JMP_RELBRb:
      return new DirJmpTerminator(block_pool, branch, tracee, lb);
    default:
      return new IndTerminator(block_pool, branch, tracee, lb, rb);
    }

  case XED_ICLASS_RET_NEAR:
    return new RetTerminator(block_pool, branch, tracee, lb, rb, rsb);

  default: // XED_ICLASS_JCC
    return new DirJccTerminator(block_pool, branch, tracee, lb, rb);
  }
}

Terminator::Terminator(BlockPool& block_pool, size_t size, const Instruction& branch,
		       Tracee& tracee, const LookupBlock& lb):
  addr_(block_pool.peek()), size_(size), buf_(size), tracee_(tracee), lb_(lb),
  orig_branch_addr(branch.pc())
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

DirJmpTerminator::DirJmpTerminator(BlockPool& block_pool, const Instruction& jmp,
				   Tracee& tracee, const LookupBlock& lb):
  Terminator(block_pool, DIR_JMP_SIZE, jmp, tracee, lb)
{
  // assert(jmp.xed_iform() == XED_IFORM_JMP_RELBRd);

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
  Terminator(block_pool, DIR_JCC_SIZE, jcc, tracee, lb), orig_dst(jcc.branch_dst()),
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
  Terminator(block_pool, IND_SIZE, branch, tracee, lb)
{
  /* just bkpt */
  uint8_t *bkpt_addr = addr();
  const auto bkpt_inst = Instruction::int3(bkpt_addr);
  write(bkpt_inst);
  flush();

  /* register bkpt */
  rb(bkpt_addr, make_callback<Terminator>(this, &Terminator::handle_bkpt_singlestep));

#if 0
  std::cout << "indjmp " << std::hex << (void *) branch.pc() << " "
	    << branch.xed_iform_str() << " "
	    << branch << std::endl;
#endif
}

void Terminator::handle_bkpt_singlestep(void) {
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
			     const LookupBlock& lb, const RegisterBkpt& rb,
			     const ReturnStackBuffer& rsb):
  Terminator(block_pool, RET_SIZE, ret, tracee, lb)
{
  constexpr auto NINSTS = 15;
  const std::array<uint8_t, NINSTS> sizes = {4, 1, 7, 7, 2, 8, 3, 2, 4, 1, 4, 1, 1, 4, 1};

  /* assign addressees */
  std::array<uint8_t *, NINSTS> addrs;
  uint8_t *it = addr();
  for (unsigned i = 0; i < NINSTS; ++i) {
    addrs[i] = it;
    it += sizes[i];
  }
  /* create instructions */
  std::array<Instruction, NINSTS> insts;
  insts[0] =  Instruction(addrs[0], {0x48, 0x87, 0x04, 0x24}); // xchg qword [rsp], rax
  insts[1] =  Instruction(addrs[1], {0x51}); // push rcx
  insts[2] =  Instruction::mov_mem64(addrs[2], Instruction::reg_t::RCX, (uint8_t *) rsb.ptr());
  insts[3] =  Instruction::cmp_mem64(addrs[3], Instruction::reg_t::RCX, (uint8_t *) rsb.begin());
  insts[4] =  Instruction(addrs[4], {0x74, 0x17}); // je .mismatch
  insts[5] =  Instruction::add_mem64_imm8(addrs[5], (uint8_t *) rsb.ptr(), 16); // add qword [rel ptr], 16
  insts[6] =  Instruction(addrs[6], {0x48, 0x3b, 0x01}); // cmp rax, qword [rcx]
  insts[7] =  Instruction(addrs[7], {0x75, 0x0a}); // jne .mismatch
  insts[8] =  Instruction(addrs[8], {0x48, 0x8b, 0x41, 0x08}); // mov rax, qword [rcx + 8]
  insts[9] =  Instruction(addrs[9], {0x59}); // pop rcx
  insts[10] = Instruction(addrs[10], {0x48, 0x87, 0x04, 0x24}); // xchg qword [rsp], rax
  insts[11] = Instruction(addrs[11], {0xc3}); // ret
  insts[12] = Instruction(addrs[12], {0x59}); // pop rcx
  insts[13] = Instruction(addrs[13], {0x48, 0x87, 0x04, 0x24}); // xchg qword [rsp], rax
  insts[14] = Instruction(addrs[14], {0xcc}); // int3


  /* assertions */
  for (auto i = 0; i < NINSTS; ++i) {
    assert(sizes[i] == insts[i].size());
  }
  assert(RET_SIZE == std::accumulate(sizes.begin(), sizes.end(), 0));

  for (const auto& inst : insts) {
    write(inst);
  }
  
  flush();

  rb(insts[14].pc(), make_callback<Terminator>(this, &Terminator::handle_bkpt_singlestep));

}

CallTerminator::CallTerminator(BlockPool& block_pool, PointerPool& ptr_pool, size_t size,
			       const Instruction& call, Tracee& tracee, const LookupBlock& lb,
			       const ProbeBlock& pb, const RegisterBkpt& rb,
			       const ReturnStackBuffer& rsb):
  Terminator(block_pool, size + CALL_SIZE, call, tracee, lb)
{
  constexpr auto NINSTS = 10;
  const std::array<uint8_t, NINSTS> lens = {1, 3, 7, 7, 2, 6, 6, 7, 3, 1};

  /* assign addresses */
  std::array<uint8_t *, NINSTS> addrs;
  uint8_t *it = addr();
  for (auto i = 0; i < NINSTS; ++i) {
    addrs[i] = it;
    it += lens[i];
  }
  uint8_t *bkpt_addr = addr() + CALL_SIZE_PRE + size;

  /* allocate pointers */
  orig_ra_val = call.after_pc();
  uint8_t *new_ra_val;
  if ((new_ra_val = pb(call.after_pc())) == nullptr) {
    new_ra_val = bkpt_addr;
  }
  uint8_t **orig_ra_ptr = (uint8_t **) ptr_pool.add((uintptr_t) orig_ra_val);
  new_ra_ptr = (uint8_t **) ptr_pool.add((uintptr_t) new_ra_val); // TODO: optimize -- check if TXed

  /* create pre instructions */
  std::array<Instruction, NINSTS> insts;
  insts[0]  = Instruction(addrs[0], {0x50}); // push rax
  insts[1]  = Instruction(addrs[1], {0x48, 0x89, 0xe0}); // mov rax, rsp
  insts[2]  = Instruction::mov_mem64(addrs[2], Instruction::reg_t::RSP, (uint8_t *) rsb.ptr());
  insts[3]  = Instruction::cmp_mem64(addrs[3], Instruction::reg_t::RSP, (uint8_t *) rsb.end());
  insts[4]  = Instruction(addrs[4], {0x74, 0x13}); // je 0x2d
  insts[5]  = Instruction::push_mem(addrs[5], (uint8_t *) new_ra_ptr);
  insts[6]  = Instruction::push_mem(addrs[6], (uint8_t *) orig_ra_ptr);
  insts[7]  = Instruction::mov_mem64(addrs[7], (uint8_t *) rsb.ptr(), Instruction::reg_t::RSP);
  insts[8]  = Instruction(addrs[8], {0x48, 0x89, 0xc4});
  insts[9]  = Instruction(addrs[9], {0x58});

  /* assertions */
  for (auto i = 0; i < NINSTS; ++i) {
    assert(insts[i].size() == lens[i]);
  }
  assert(CALL_SIZE_PRE == std::accumulate(lens.begin(), lens.end(), 0));

  /* write instructions */
  for (const auto& inst : insts) {
    write(inst);
  }

  /* post instructions */
  const auto bkpt = Instruction::int3(bkpt_addr);
  write(bkpt);
  rb(bkpt_addr, make_callback(this, &CallTerminator::handle_bkpt_ret));
  
  flush(); // TODO: duplicate flush with subclasses
}

void CallTerminator::handle_bkpt_ret(void) {
  uint8_t *new_ra_val = lookup_block(orig_ra_val);
  tracee().write(&new_ra_val, sizeof(new_ra_val), new_ra_ptr);
  tracee().set_pc(new_ra_val);
}

CallDirTerminator::CallDirTerminator(BlockPool& block_pool, PointerPool& ptr_pool,
				     const Instruction& call, Tracee& tracee, const LookupBlock& lb,
				     const ProbeBlock& pb, const RegisterBkpt& rb,
				     const ReturnStackBuffer& rsb):
  CallTerminator(block_pool, ptr_pool, CALL_DIR_SIZE, call, tracee, lb, pb, rb, rsb)
{
  /* push [rel orig_ra] 
   * jmp new_dst
   */
  
  uint8_t **orig_ra_ptr = (uint8_t **) ptr_pool.add((uintptr_t) call.after_pc());
  uint8_t *orig_dst = call.branch_dst();
  uint8_t *new_dst = lb(orig_dst);

  uint8_t *it = subaddr();
  it = write(Instruction::push_mem(it, (uint8_t *) orig_ra_ptr));
  it = write(Instruction::jmp_relbrd(it, new_dst));

  /* assertions */
  assert(it - subaddr() == CALL_DIR_SIZE);

  flush();
}

CallIndTerminator::CallIndTerminator(BlockPool& block_pool, PointerPool& ptr_pool,
				     const Instruction& call, Tracee& tracee, const LookupBlock& lb,
				     const ProbeBlock& pb, const RegisterBkpt& rb,
				     const ReturnStackBuffer& rsb):
  CallTerminator(block_pool, ptr_pool, CALL_IND_SIZE, call, tracee, lb, pb, rb, rsb)
{
  uint8_t *bkpt_addr = subaddr();
  const auto bkpt_inst = Instruction::int3(bkpt_addr);
  write(bkpt_inst);
  flush();

  rb(bkpt_addr, make_callback<Terminator>(this, &Terminator::handle_bkpt_singlestep));
}
