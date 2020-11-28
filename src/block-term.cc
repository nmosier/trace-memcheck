#include <memory>
#include <algorithm>
#include <unordered_map>
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
    default:
      return new JmpIndTerminator<4>(block_pool, ptr_pool, branch, tracee, lb, rb);
    }

  case XED_ICLASS_RET_NEAR:
    return new RetTerminator(block_pool, branch, tracee, lb, rb, rsb);

  default: // XED_ICLASS_JCC
    return new DirJccTerminator(block_pool, branch, tracee, lb, pb, rb);
  }
}

Terminator::Terminator(BlockPool& block_pool, size_t size, const Instruction& branch,
		       Tracee& tracee, const LookupBlock& lb):
  addr_(block_pool.peek()), size_(size), buf_(size), tracee_(tracee), lb_(lb),
  orig_branch_addr_(branch.pc())
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
  uint8_t *new_dst_addr = lookup_block(orig_dst_addr);

  /* jmp <dst> */

  uint8_t *jmp_addr = addr();
  const auto jmp_inst = Instruction::jmp_relbrd(jmp_addr, new_dst_addr);
  write(jmp_inst);
  flush();
}

DirJccTerminator::DirJccTerminator(BlockPool& block_pool, const Instruction& jcc,
				   Tracee& tracee, const LookupBlock& lb, const ProbeBlock& pb,
				   const RegisterBkpt& rb):
  Terminator(block_pool, DIR_JCC_SIZE, jcc, tracee, lb), orig_dst(jcc.branch_dst()),
  orig_fallthru(jcc.after_pc()), iform(jcc.xed_iform())
{
  static const std::unordered_set<int> jcc_iclasses = {XED_ICLASS_JB, XED_ICLASS_JBE, XED_ICLASS_JL, XED_ICLASS_JLE, XED_ICLASS_JNB, XED_ICLASS_JNBE, XED_ICLASS_JNL, XED_ICLASS_JNLE, XED_ICLASS_JNO, XED_ICLASS_JNP, XED_ICLASS_JNS, XED_ICLASS_JNZ, XED_ICLASS_JO, XED_ICLASS_JP, XED_ICLASS_JS, XED_ICLASS_JZ};
  assert(jcc_iclasses.find(jcc.xed_iclass()) != jcc_iclasses.end());
  
  /* jcc L0
   * bkpt (padded for JMP_RELBRd)
   * L0: bkpt
   */

  /* assign addresses */
  uint8_t *jcc_addr = addr();
  fallthru_addr = jcc_addr + Instruction::jcc_relbrd_len;
  jcc_bkpt_addr = fallthru_addr + Instruction::jmp_relbrd_len;

  /* check for dst blocks */
  const Bias bias = get_bias(jcc);

  uint8_t *new_dst;
  if (bias == Bias::JCC) {
    new_dst = try_lookup_block(orig_dst);
  } else {
    new_dst = pb(orig_dst);
  }

  uint8_t *new_fallthru;
  if (bias == Bias::FALLTHRU) {
    new_fallthru = try_lookup_block(orig_fallthru);
  } else {
    new_fallthru = pb(orig_fallthru);
  }
  
  /* create blobs */
  jcc_inst = jcc;
  jcc_inst.relocate(jcc_addr);
  if (new_dst == nullptr) {
    jcc_inst.retarget(jcc_bkpt_addr); // TODO: optim
    rb(jcc_bkpt_addr, make_callback(this, &DirJccTerminator::handle_bkpt_jcc));
  } else {
    jcc_inst.retarget(new_dst);
  }
  Instruction fallthru_inst;
  if (new_fallthru == nullptr) {
    fallthru_inst = Instruction::int3(fallthru_addr);
    rb(fallthru_addr, make_callback(this, &DirJccTerminator::handle_bkpt_fallthru));
  } else {
    fallthru_inst = Instruction::jmp_relbrd(fallthru_addr, new_fallthru);
  }
  const auto jcc_bkpt_inst = Instruction::int3(jcc_bkpt_addr);

  /* write blobs */
  write(jcc_inst);
  write(fallthru_inst);
  write(jcc_bkpt_inst);
  
  /* flush */
  flush();
}

DirJccTerminator::Bias DirJccTerminator::get_bias(const Instruction& inst) {
  switch (inst.xed_iclass()) {
  case XED_ICLASS_JZ:
  case XED_ICLASS_JBE:
    return Bias::NONE;
    
  case XED_ICLASS_JS:
  case XED_ICLASS_JL:
  case XED_ICLASS_JNLE:
  case XED_ICLASS_JNL:
  case XED_ICLASS_JNZ:
  case XED_ICLASS_JO: 
  case XED_ICLASS_JB: 
  case XED_ICLASS_JNBE:
  case XED_ICLASS_JNB: 
  case XED_ICLASS_JLE:
    return Bias::FALLTHRU;
    
  case XED_ICLASS_JNS:
    return Bias::JCC;
    
  default:
    abort();
  }
}

void DirJccTerminator::handle_bkpt_fallthru() {
  /* replace fallthru bkpt with jump */
  uint8_t *new_fallthru = lookup_block(orig_fallthru);
  const auto fallthru_inst = Instruction::jmp_relbrd(fallthru_addr, new_fallthru);
  write(fallthru_inst);
  flush();
  tracee().set_pc(new_fallthru);

  if (g_conf.dump_jcc_bkpts) {
    std::clog << "FALLTHRU " << jcc_inst << std::endl;
  }
}

void DirJccTerminator::handle_bkpt_jcc() {
  /* replace jump instruction */
  uint8_t *new_dst = lookup_block(orig_dst);
  jcc_inst.retarget(new_dst);
  write(jcc_inst);
  tracee().set_pc(new_dst);
  flush();

  if (g_conf.dump_jcc_bkpts) {
    std::clog << "JCC " << jcc_inst << std::endl;
  }
}

void Terminator::handle_bkpt_singlestep(uint8_t *& orig_pc, uint8_t *& new_pc) {
  /* 1. jump to original branch
   * 2. single step
   * 3. lookup block for new pc
   * 4. jump to block
   */
  
  /* 1 */
  tracee().set_pc(orig_branch_addr());

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
    fprintf(stderr, "bkpt %016lx ", (intptr_t) orig_branch_addr());
    std::clog << "bkpt " << (void *) orig_branch_addr() << " -> "
	      << (void *) orig_pc << ": " << Instruction(orig_branch_addr(), tracee()) << std::endl;
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
  static const std::array<uint8_t, NINSTS> lens
    {4, 1, 1, 7, 7, 2, 8, 3, 2, 4, 1, 1, 4, 1, 1, 1, 4, 1};

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
  static const std::array<uint8_t, NINSTS> lens = {1, 1, 3, 7, 7, 2, 6, 6, 7, 3, 1, 1};

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

  if ((new_ra_val = try_lookup_block(call.after_pc())) == nullptr) {
    new_ra_val = bkpt_addr;
  }
  
  uint8_t **orig_ra_ptr = (uint8_t **) ptr_pool.add((uintptr_t) orig_ra_val);
  new_ra_ptr = (uint8_t **) ptr_pool.add((uintptr_t) new_ra_val); // TODO: optimize -- check if TXed

  /* create pre instructions */
  std::array<Instruction, NINSTS> insts;
  insts[ 0] = Instruction::pushf(addrs[0]); // pushf
  insts[ 1] = Instruction(addrs[1], {0x50}); // push rax
  insts[ 2] = Instruction(addrs[2], {0x48, 0x89, 0xe0}); // mov rax, rsp
  insts[ 3] = Instruction::mov_mem64(addrs[3], Instruction::reg_t::RSP, (uint8_t *) rsb.ptr());
  insts[ 4] = Instruction::cmp_mem64(addrs[4], Instruction::reg_t::RSP, (uint8_t *) rsb.end());
  insts[ 5] = Instruction(addrs[5], {0x74, 0x13}); // je 0x2d
  insts[ 6] = Instruction::push_mem(addrs[6], (uint8_t *) new_ra_ptr); // push qword [rel new_ra]
  insts[ 7] = Instruction::push_mem(addrs[7], (uint8_t *) orig_ra_ptr); // push qword [rel orig_ra]
  insts[ 8] = Instruction::mov_mem64(addrs[8], (uint8_t *) rsb.ptr(), Instruction::reg_t::RSP);
  insts[ 9] = Instruction(addrs[9], {0x48, 0x89, 0xc4}); // mov rsp, rax
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
  std::clog << "warning: return address misprediction" << std::endl;
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
  uint8_t *new_dst = lookup_block(orig_dst);

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

template <size_t CACHELEN>
uint8_t *JmpIndTerminator<CACHELEN>::match_addr(size_t n, const Instruction& jmp) const {
  return addr() + JMP_IND_SIZE_base + JMP_IND_SIZE_cmp * CACHELEN
    + load_addr_size(jmp) + JMP_IND_SIZE_match * n;
}

template <size_t CACHELEN>
size_t JmpIndTerminator<CACHELEN>::jmp_ind_size(const Instruction& jmp) {
  return JMP_IND_SIZE_base + CACHELEN * JMP_IND_SIZE_per + load_addr_size(jmp);
}

template <size_t CACHELEN>
JmpIndTerminator<CACHELEN>::JmpIndTerminator(BlockPool& block_pool, PointerPool& ptr_pool,
					     const Instruction& jmp, Tracee& tracee,
					     const LookupBlock& lb, const RegisterBkpt& rb):
  Terminator(block_pool, jmp_ind_size(jmp), jmp, tracee, lb)
{
  /* make orig pointers */
  for (auto& orig : origs) {
    orig = (uint8_t **) ptr_pool.add((uintptr_t) nullptr);
  }
  
  uint8_t *it = addr();

  const auto pushf = Instruction::pushf(it);
  it += pushf.size();
  const auto push_rax = Instruction(it, {0x50});
  it += push_rax.size();

  write(pushf);
  write(push_rax);

  /* get address into RAX */
  it = load_addr(jmp, ptr_pool, it);

  /* comparisons */
  for (size_t i = 0; i < CACHELEN; ++i) {
    const auto cmp = Instruction::cmp_mem64(it, Instruction::reg_t::RAX, (uint8_t *) origs[i]);
    it += cmp.size();
    const auto je = Instruction::je_b(it,  match_addr(i, jmp));
    it += je.size();

    write(cmp);
    write(je);
  }

  /* mismatch cleanup */
  const auto pop_rax = Instruction(it, {0x58});
  it += pop_rax.size();
  const auto popf = Instruction::popf(it);
  it += popf.size();
  write(pop_rax);
  write(popf);
  
  /* mismatch breakpoint */
  const auto mismatch_bkpt = Instruction::int3(it);
  it += mismatch_bkpt.size();
  write(mismatch_bkpt);
  rb(mismatch_bkpt.pc(), make_callback(this, &JmpIndTerminator::handle_bkpt));

  /* null breakpoint */
  const auto null_bkpt = Instruction::int3(it);
  it += null_bkpt.size();
  write(null_bkpt);
  rb(null_bkpt.pc(), [&] () {
    std::clog << "jumped to NULL" << std::endl;
    std::clog << "pc: " << (void *) tracee.get_pc() << std::endl;
    const auto begin = addr();
    const auto end = begin + jmp_ind_size(jmp);
    tracee.disas(std::clog, begin, end);
    
    abort();
  });
  
  assert(static_cast<size_t>(it - addr())
	 == JMP_IND_SIZE_base + JMP_IND_SIZE_cmp * CACHELEN + load_addr_size(jmp));
  
  /* matches */
  for (size_t i = 0; i < CACHELEN; ++i) {
    const auto pop_rax = Instruction(it, {0x58});
    it += pop_rax.size();
    const auto popf = Instruction::popf(it);
    it += popf.size();
    newjmps[i] = Instruction::jmp_relbrd(it, null_bkpt.pc());
    it += newjmps[i].size();
    
    write(pop_rax);
    write(popf);
    write(newjmps[i]);
  }

  flush();

  /* assertions */
  assert(jmp_ind_size(jmp) == static_cast<size_t>(it - addr()));
}

template <size_t CACHELEN>
void JmpIndTerminator<CACHELEN>::handle_bkpt(void) {
  uint8_t *orig_pc;
  uint8_t *new_pc;
  Terminator::handle_bkpt_singlestep(orig_pc, new_pc);

  /* Update cache: shift origs & newjmps down, add new pair at front.
   */
  const auto i = eviction_index;
  tracee().write(&orig_pc, sizeof(orig_pc), (uint8_t *) origs[i]);
  newjmps[i].retarget(new_pc);
  write(newjmps[i]);
  flush();
  eviction_index = (eviction_index + 1) % CACHELEN;
}

template <size_t CACHELEN>
uint8_t *JmpIndTerminator<CACHELEN>::load_addr(const Instruction& jmp, PointerPool& ptr_pool,
					       uint8_t *addr) {
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

  /* check for non-REX prefix */
  while (true) {
    switch (*data_it) {
    case 0xF2:
      *newdata_it++ = *data_it++;
      break;
    default:
      goto post_prefixes;
    }
  }
 post_prefixes:
  
  /* check for prefix */
  if ((*data_it & 0xf0) == 0x40) {
    const uint8_t rex = *data_it++;
    assert((rex & 0x43) == rex);
    const uint8_t newrex = rex | 0b1000;
    *newdata_it++ = newrex;
  } else {
    *newdata_it++ = 0x48;
  }

  /* opcode */
  const uint8_t opcode = *data_it++;
  assert(opcode == 0xff); (void) opcode;
  const uint8_t newopcode = 0x8b;
  *newdata_it++ = newopcode;
  
  /* modify modrm byte */
  const uint8_t modrm = *data_it++;
  const uint8_t newmodrm = (modrm & ~(0b111 << 3)) | (static_cast<uint8_t>(Instruction::reg_t::RAX) << 3);
  *newdata_it++ = newmodrm;

  /* copy remaining bytes */
  std::copy(data_it, data_end, newdata_it);

  /* create instruction */
  const Instruction inst(addr, newdata);
  write(inst);

  // DEBUG: write inst
  // std::clog << jmp << " -> " << inst << std::endl;

  assert(inst.size() == load_addr_size(jmp));
  return addr + inst.size();
}

template <size_t CACHELEN>
size_t JmpIndTerminator<CACHELEN>::load_addr_size(const Instruction& jmp) {
  if (jmp.xed_iform() == XED_IFORM_JMP_MEMv && jmp.xed_base_reg() == XED_REG_RIP) {
    return 10;
  } else {
    /* skip non-REX prefixes */
    auto it = jmp.data();
    while (true) {
      switch (*it) {
      case 0xF2:
	++it;
	break;
      default:
	goto label;
      }
    }
  label:
    if (*it == 0xff) {
      return jmp.size() + 1;
    } else {
      const uint8_t rex = *it;
      assert((rex & 0xf0) == 0x40); (void) rex;
      return jmp.size();
    }
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

