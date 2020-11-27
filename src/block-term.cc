#include <memory>
#include <algorithm>
#include <cassert>
#include <sys/wait.h>
#include <unordered_set>
#include "block-term.hh"
#include "util.hh"
#include "debug.h"
#include "config.hh"

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
      
    case XED_IFORM_JMP_MEMv:
      if (branch.xed_base_reg() == XED_REG_RIP) {
	return new JmpMemTerminator(block_pool, ptr_pool, branch, tracee, lb, rb);
      }
      // fallthrough
    default:
      return new JmpIndTerminator(block_pool, branch, tracee, lb, rb);
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

JmpIndTerminator::JmpIndTerminator(BlockPool& block_pool, const Instruction& branch,
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
}

void Terminator::handle_bkpt_singlestep(uint8_t *& orig_pc, uint8_t *& new_pc) {
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

  orig_pc = tracee().get_pc();
  
  /* 3 */
  new_pc = lookup_block(orig_pc);

  /* 4 */
  tracee().set_pc(new_pc);

  if (g_conf.dump_ss_bkpts) {
    fprintf(stderr, "bkpt %016lx ", (intptr_t) orig_branch_addr);
    std::clog << "bkpt " << (void *) orig_branch_addr << " -> "
	      << (void *) orig_pc << ": " << Instruction(orig_branch_addr, tracee()) << std::endl;
  }
}

void Terminator::handle_bkpt_singlestep(void) {
  uint8_t *orig_pc;
  uint8_t *new_pc;
  handle_bkpt_singlestep(orig_pc, new_pc);
}


RetTerminator::RetTerminator(BlockPool& block_pool, const Instruction& ret, Tracee& tracee,
			     const LookupBlock& lb, const RegisterBkpt& rb,
			     const ReturnStackBuffer& rsb):
  Terminator(block_pool, RET_SIZE, ret, tracee, lb)
{
  constexpr auto NINSTS = 18;
  const std::array<uint8_t, NINSTS> lens = {4, 1, 1, 7, 7, 2, 8, 3, 2, 4, 1, 1, 4, 1, 1, 1, 4, 1};

  /* assign addressees */
  std::array<uint8_t *, NINSTS> addrs;
  uint8_t *it = addr();
  for (unsigned i = 0; i < NINSTS; ++i) {
    addrs[i] = it;
    it += lens[i];
  }
  uint8_t *bkpt_addr = addrs[17];
  
  /* create instructions */
  std::array<Instruction, NINSTS> insts;
  insts[ 0] = Instruction(addrs[0], {0x48, 0x87, 0x04, 0x24}); // xchg qword [rsp], rax
  insts[ 1] = Instruction::pushf(addrs[1]); // pushf
  insts[ 2] = Instruction(addrs[2], {0x51}); // push rcx
  insts[ 3] = Instruction::mov_mem64(addrs[3], Instruction::reg_t::RCX, (uint8_t *) rsb.ptr());
  insts[ 4] = Instruction::cmp_mem64(addrs[4], Instruction::reg_t::RCX, (uint8_t *) rsb.begin());
  insts[ 5] = Instruction(addrs[5], {0x74, 0x18}); // je .mismatch
  insts[ 6] = Instruction::add_mem64_imm8(addrs[6], (uint8_t *) rsb.ptr(), 16); // add qword [rel ptr], 16
  insts[ 7] = Instruction(addrs[7], {0x48, 0x3b, 0x01}); // cmp rax, qword [rcx]
  insts[ 8] = Instruction(addrs[8], {0x75, 0x0b}); // jne .mismatch
  insts[ 9] = Instruction(addrs[9], {0x48, 0x8b, 0x41, 0x08}); // mov rax, qword [rcx + 8]
  insts[10] = Instruction(addrs[10], {0x59}); // pop rcx
  insts[11] = Instruction::popf(addrs[11]); // popf
  insts[12] = Instruction(addrs[12], {0x48, 0x87, 0x04, 0x24}); // xchg qword [rsp], rax
  insts[13] = Instruction(addrs[13], {0xc3}); // ret
  insts[14] = Instruction(addrs[14], {0x59}); // pop rcx
  insts[15] = Instruction::popf(addrs[15]); // popf
  insts[16] = Instruction(addrs[16], {0x48, 0x87, 0x04, 0x24}); // xchg qword [rsp], rax
  insts[17] = Instruction(addrs[17], {0xcc}); // int3

  /* assertions */
  for (auto i = 0; i < NINSTS; ++i) {
    assert(lens[i] == insts[i].size());
  }
  assert(RET_SIZE == std::accumulate(lens.begin(), lens.end(), 0));

  for (const auto& inst : insts) {
    write(inst);
  }
  
  flush();

  rb(bkpt_addr, make_callback<Terminator>(this, &Terminator::handle_bkpt_singlestep));
}

CallTerminator::CallTerminator(BlockPool& block_pool, PointerPool& ptr_pool, size_t size,
			       const Instruction& call, Tracee& tracee, const LookupBlock& lb,
			       const ProbeBlock& pb, const RegisterBkpt& rb,
			       const ReturnStackBuffer& rsb):
  Terminator(block_pool, size + CALL_SIZE, call, tracee, lb)
{
  constexpr auto NINSTS = 12;
  const std::array<uint8_t, NINSTS> lens = {1, 1, 3, 7, 7, 2, 6, 6, 7, 3, 1, 1};

  /* assign addresses */
  std::array<uint8_t *, NINSTS> addrs;
  uint8_t *it = addr();
  for (auto i = 0; i < NINSTS; ++i) {
    addrs[i] = it;
    it += lens[i];
  }
  uint8_t *bkpt_addr = subaddr() + size;

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
  insts[0]  = Instruction::pushf(addrs[0]); // pushf
  insts[1]  = Instruction(addrs[1], {0x50}); // push rax
  insts[2]  = Instruction(addrs[2], {0x48, 0x89, 0xe0}); // mov rax, rsp
  insts[3]  = Instruction::mov_mem64(addrs[3], Instruction::reg_t::RSP, (uint8_t *) rsb.ptr());
  insts[4]  = Instruction::cmp_mem64(addrs[4], Instruction::reg_t::RSP, (uint8_t *) rsb.end());
  insts[5]  = Instruction(addrs[5], {0x74, 0x13}); // je 0x2d
  insts[6]  = Instruction::push_mem(addrs[6], (uint8_t *) new_ra_ptr); // push qword [rel new_ra]
  insts[7]  = Instruction::push_mem(addrs[7], (uint8_t *) orig_ra_ptr); // push qword [rel orig_ra]
  insts[8]  = Instruction::mov_mem64(addrs[8], (uint8_t *) rsb.ptr(), Instruction::reg_t::RSP);
  insts[9]  = Instruction(addrs[9], {0x48, 0x89, 0xc4}); // mov rsp, rax
  insts[10] = Instruction(addrs[10], {0x58}); // pop rax
  insts[11] = Instruction::popf(addrs[11]); // popf
  
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


JmpMemTerminator::JmpMemTerminator(BlockPool& block_pool, PointerPool& ptr_pool,
				   const Instruction& jmp, Tracee& tracee,
				   const LookupBlock& lb, const RegisterBkpt& rb):
  Terminator(block_pool, jmp_mem_size(jmp), jmp, tracee, lb)
{
  uint8_t *addr_it = addr();

  const auto pushf = Instruction::pushf(addr_it);
  addr_it += pushf.size();

  const Instruction push_rax(addr_it, {0x50});
  addr_it += push_rax.size();

  write(pushf);
  write(push_rax);

  /* get address into RAX */
  addr_it = load_addr(jmp, ptr_pool, addr_it);

  /* rest of instructions */
  constexpr auto NINSTS = 9;
  const std::array<uint8_t, NINSTS> lens = {7, 2, 1, 1, 5, 1, 1, 1, 1};
  
  /* create pointers */
  orig_ptr = (uint8_t **) ptr_pool.add(reinterpret_cast<uintptr_t>(nullptr));

  /* assign addresses */
  std::array<uint8_t *, NINSTS> addrs;
  addr_it = assign_addresses(lens, addrs, addr_it);

  /* create instructions */
  std::array<Instruction, NINSTS> insts;
  insts[0] = Instruction::cmp_mem64(addrs[0], Instruction::reg_t::RAX,
				    (uint8_t *) orig_ptr); // cmp rax, []
  insts[1] = Instruction(addrs[1], {0x75, 0x07}); // jne .mismatch
  insts[2] = Instruction(addrs[2], {0x58}); // pop rax
  insts[3] = Instruction::popf(addrs[3]); // popf
  insts[4] = new_jmp = Instruction::jmp_relbrd(addrs[4], addrs[8]); // jmp .null
  insts[5] = Instruction(addrs[5], {0x58}); // pop rax
  insts[6] = Instruction::popf(addrs[6]); // popf
  insts[7] = Instruction::int3(addrs[7]); // int3 (.mismtch)
  insts[8] = Instruction::int3(addrs[8]); // int3 (.null)
  
  /* assertions */
  for (auto i = 0; i < NINSTS; ++i) {
    assert(insts[i].size() == lens[i]);
  }
  assert(jmp_mem_size(jmp) == static_cast<size_t>(addr_it - addr()));

  /* write instructions */
  for (const auto& inst : insts) {
    write(inst);
  }
  flush();
  
  /* register breakpoints */
  rb(addrs[7], make_callback<JmpMemTerminator>(this, &JmpMemTerminator::handle_bkpt));
  rb(addrs[8], [] () {
    std::clog << "jumped to NULL" << std::endl;
    abort();
  });
}

void JmpMemTerminator::handle_bkpt(void) {
  uint8_t *orig_pc;
  uint8_t *new_pc;
  Terminator::handle_bkpt_singlestep(orig_pc, new_pc);

  /* update cache */
  tracee().write(&orig_pc, sizeof(orig_pc), (uint8_t *) orig_ptr);
  new_jmp.retarget(new_pc);
  write(new_jmp);
  flush();
}

uint8_t *JmpMemTerminator::load_addr(const Instruction& jmp, PointerPool& ptr_pool, uint8_t *addr) {
  assert(jmp.xed_iclass() == XED_ICLASS_JMP);
  
  if (jmp.xed_iform() == XED_IFORM_JMP_MEMv && jmp.xed_base_reg() == XED_REG_RIP) {
    uint8_t *dst = jmp.mem_dst();
    uint8_t **ptr = (uint8_t **) ptr_pool.add((uintptr_t) dst);
    const auto inst1 = Instruction::mov_mem64(addr, Instruction::reg_t::RAX, (uint8_t *) ptr);
    addr += inst1.size();
    const Instruction inst2(addr, {0x48, 0x8b, 0x00});
    addr += inst2.size();

    write(inst1);
    write(inst2);

    assert(inst1.size() + inst2.size() == load_addr_size(jmp));

    return addr;
  }

  using Data = Instruction::Data;
  Data newdata;
  const uint8_t *data_it = jmp.data();
  const uint8_t *data_end = data_it + jmp.size();
  
  Data::iterator newdata_it  = newdata.begin();
  
  /* check for prefix */
  if ((*data_it & 0xf0) == 0x40) {
    const uint8_t rex = *data_it++;
    assert((rex & 0x43) == 0x43);
    const uint8_t newrex = rex | 0b1000;
    *newdata_it++ = newrex;
  } else {
    *newdata_it++ = 0x48;
  }

  /* opcode */
  const uint8_t opcode = *data_it++;
  assert(opcode == 0xff);
  const uint8_t newopcode = 0x8b;
  *newdata_it++ = newopcode;
  
  /* modify modrm byte */
  const uint8_t modrm = *data_it;
  const uint8_t newmodrm = (modrm & ~(0b111 << 3)) | (static_cast<uint8_t>(Instruction::reg_t::RAX) << 3);
  *newdata_it++ = newmodrm;

  /* copy remaining bytes */
  std::copy(data_it, data_end, newdata_it);

  /* create instruction */
  const Instruction inst(addr, newdata);
  write(inst);

  // DEBUG: write inst
  std::clog << jmp << " -> " << inst << std::endl;

  assert(inst.size() == load_addr_size(jmp));
  return addr + inst.size();
}

size_t JmpMemTerminator::load_addr_size(const Instruction& jmp) {
  if (jmp.xed_iform() == XED_IFORM_JMP_MEMv && jmp.xed_base_reg() == XED_REG_RIP) {
    return 10;
  } else if (jmp.data()[0] == 0xff) {
    return jmp.size() + 1;
  } else {
    const uint8_t rex = jmp.data()[0];
    assert((rex & 0xf0) == 0x40);
    return jmp.size();
  }
}

template <size_t N>
uint8_t *Terminator::assign_addresses(const std::array<uint8_t, N>& lens,
				      std::array<uint8_t *, N>& addrs, uint8_t *addr) {
  auto lens_it = lens.begin();
  auto addrs_it = addrs.begin();
  for (; lens_it != lens.end(); ++lens_it) {
    *addrs_it++ = addr;
    addr += *lens_it;
  }

  return addr;
}

