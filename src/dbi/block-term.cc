#include <memory>
#include <algorithm>
#include <unordered_map>
#include <cassert>
#include <sys/wait.h>
#include <unordered_set>
#include "block-term.hh"
#include "util.hh"
#include "config.hh"
#include "block.hh"

namespace dbi {

  std::string DirJccTerminator::last_decision(last_decision_bits, 'x');
  xed_iclass_enum_t DirJccTerminator::last_iclass(void) const {
    abort(); // TODO: Broken because block instructions were removed.
#if 0
    const auto it = block.insts().rbegin();
    if (it == block.insts().rend()) {
      return XED_ICLASS_INVALID;
    } else {
      return (**it).xed_iclass();
    }
#endif
  }

  const char *DirJccTerminator::last_iclass_str(void) const {
    return xed_iclass_enum_t2str(last_iclass());
  }


  Terminator *Terminator::Create(BlockPool& block_pool,
				 PointerPool& ptr_pool,
				 TmpMem& tmp_mem,
				 const Instruction& branch,
				 Tracees& tracees,
				 const LookupBlock& lb,
				 const ProbeBlock& pb,
				 const RegisterBkpt& rb,
				 const ReturnStackBuffer& rsb,
				 const Block& block) {
    switch (branch.xed_iclass()) {
    case XED_ICLASS_CALL_NEAR:
      switch (branch.xed_iform()) {
      case XED_IFORM_CALL_NEAR_RELBRd:
	return new CallDirTerminator(block_pool, ptr_pool, tmp_mem, branch, tracees, lb, pb, rb, rsb);
      default:
	return new CallIndTerminator(block_pool, ptr_pool, tmp_mem, branch, tracees, lb, pb, rb, rsb);
      }

    case XED_ICLASS_JMP:
      switch (branch.xed_iform()) {
      case XED_IFORM_JMP_RELBRd:
      case XED_IFORM_JMP_RELBRb:
	return new DirJmpTerminator(block_pool, branch, tracees, lb);
      default:
	return new JmpIndTerminator<4>(block_pool, ptr_pool, tmp_mem, branch, tracees, lb, rb);
      }

    case XED_ICLASS_RET_NEAR:
      return new RetTerminator(block_pool, tmp_mem, branch, tracees, lb, rb, rsb);

    default: // XED_ICLASS_JCC
      return new DirJccTerminator(block_pool, branch, tracees, lb, pb, rb, block);
    }
  }

  Terminator::Terminator(BlockPool& block_pool, size_t size, const Instruction& branch,
			 Tracees& tracees, const LookupBlock& lb):
    addr_(block_pool.peek()), size_(size), buf_(size), lb_(lb),
    orig_branch_addr_(branch.pc())
  {
    block_pool.alloc(size_);
  }

  uint8_t *Terminator::write(uint8_t *addr, const uint8_t *data_in, size_t count) {
    const size_t offset = addr - addr_;
    auto data_out = buf_.begin() + offset;
    assert(buf_.begin() <= data_out && data_out + count <= buf_.end());
    std::copy_n(data_in, count, data_out);
    dirty_ = true;
    return addr + count;
  }

  void Terminator::flush(Tracee& tracee) {
    if (dirty_) {
      tracee.write(buf_.data(), buf_.size(), addr());
      dirty_ = false;
    }
  }

  DirJmpTerminator::DirJmpTerminator(BlockPool& block_pool, const Instruction& jmp,
				     Tracees& tracees, const LookupBlock& lb):
    Terminator(block_pool, DIR_JMP_SIZE, jmp, tracees, lb)
  {
    uint8_t *orig_dst_addr = jmp.branch_dst();
    uint8_t *new_dst_addr = lookup_block(orig_dst_addr);
    uint8_t *jmp_addr = addr();
    const auto jmp_inst = Instruction::jmp_relbrd(jmp_addr, new_dst_addr);
    write(jmp_inst);
    flush(tracees);
  }

  DirJccTerminator::DirJccTerminator(BlockPool& block_pool, const Instruction& jcc,
				     Tracees& tracees, const LookupBlock& lb, const ProbeBlock& pb,
				     const RegisterBkpt& rb, const Block& block):
    Terminator(block_pool, DIR_JCC_SIZE, jcc, tracees, lb), orig_dst(jcc.branch_dst()),
    orig_fallthru(jcc.after_pc()), block(block), iclass(jcc.xed_iclass()), iform(jcc.xed_iform()),
    dir(jcc.branch_dst() >= jcc.after_pc() ? Direction::FWD : Direction::BACK)
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
    const Prediction pred = get_prediction();
    uint8_t *new_dst = pred.jcc ? try_lookup_block(orig_dst) : pb(orig_dst);
    uint8_t *new_fallthru = pred.fallthru ? try_lookup_block(orig_fallthru) : pb(orig_fallthru);
  
    /* create blobs */
    jcc_inst = jcc;
    jcc_inst.relocate(jcc_addr);
    if (new_dst == nullptr) {
      jcc_inst.retarget(jcc_bkpt_addr); // TODO: optim
      rb(jcc_bkpt_addr, [&] (Tracee& tracee, auto addr) { this->handle_bkpt_jcc(tracee); });
    } else {
      jcc_inst.retarget(new_dst);
    }
    Instruction fallthru_inst;
    if (new_fallthru == nullptr) {
      fallthru_inst = Instruction::int3(fallthru_addr);
      rb(fallthru_addr, [&] (Tracee& tracee, auto addr) { this->handle_bkpt_fallthru(tracee); });
    } else {
      fallthru_inst = Instruction::jmp_relbrd(fallthru_addr, new_fallthru);
    }
    const auto jcc_bkpt_inst = Instruction::int3(jcc_bkpt_addr);

    /* write blobs */
    write(jcc_inst);
    write(fallthru_inst);
    write(jcc_bkpt_inst);
  
    /* flush */
    flush(tracees);
  }

  DirJccTerminator::Prediction DirJccTerminator::get_prediction_iclass(void) const {
    constexpr float thresh = 0.8f;
    bool jcc, fallthru;
# include "jcc_iclass.inc"
    return Prediction {jcc, fallthru};
  }

  DirJccTerminator::Prediction DirJccTerminator::get_prediction_iform(void) const {
    constexpr float thresh = 0.8f;
    bool jcc, fallthru;
# include "jcc_iform.inc"
    return Prediction {jcc, fallthru};
  }

  DirJccTerminator::Prediction DirJccTerminator::get_prediction_dir(void) const {
    if (dir == Direction::BACK) {
      return {true, true};
    } else {
      return {false, false};
    }
  }

  DirJccTerminator::Prediction DirJccTerminator::get_prediction_last_iclass(void) const {
    switch (last_iclass()) {
    case XED_ICLASS_XOR: return {false, true};
    case XED_ICLASS_SUB: return {true, true};
    case XED_ICLASS_SAR: return {true, false};
    case XED_ICLASS_ADD: return {false, true};
    case XED_ICLASS_PUSH:return {false, true};
    case XED_ICLASS_MOVZX:return {true, false};
    case XED_ICLASS_DEC: return {true, false};
    case XED_ICLASS_CMPXCHG: return {true, false};
    case XED_ICLASS_MOV: return {false, true};
    case XED_ICLASS_CMP: return {false, true};
    default: return {false, false};
    }
  }

  DirJccTerminator::Prediction DirJccTerminator::get_prediction(void) const {
    switch (g_conf.prediction_mode) {
    case Config::PredictionMode::NONE:
      return get_prediction_none();
    case Config::PredictionMode::ICLASS:
      return get_prediction_iclass();
    case Config::PredictionMode::IFORM:
      return get_prediction_iform();
    case Config::PredictionMode::DIR:
      return get_prediction_dir();
    case Config::PredictionMode::LAST_ICLASS:
      return get_prediction_last_iclass();
    default: abort();
    }
  }

  DirJccTerminator::Bias DirJccTerminator::get_bias_iclass(void) const {
    switch (iclass) {
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

  void DirJccTerminator::log_bkpt(const char *kind) const {
    if (!g_conf.dump_jcc_info) { return; }

    std::cerr << kind << " "
	      << (void *) orig_dst << " "
	      << xed_iclass_enum_t2str(iclass) << " "
	      << xed_iform_enum_t2str(iform) << " "
	      << dir_str() << " "
	      << last_decision << " "
	      << last_iclass_str() << " "
	      << std::endl;
  }

  const char *DirJccTerminator::dir_str(void) const {
    switch (dir) {
    case Direction::FWD: return "FWD";
    case Direction::BACK: return "BACK";
    default: abort();
    }
  }

  const char *DirJccTerminator::bias_str(Bias bias) {
    switch (bias) {
    case Bias::NONE: return "NONE";
    case Bias::JCC: return "JCC";
    case Bias::FALLTHRU: return "FALLTHRU";
    default: abort();
    }
  }

  void DirJccTerminator::add_decision(char c) {
    std::copy(last_decision.begin() + 1, last_decision.end(), last_decision.begin());
    *last_decision.rbegin() = c;
  }

  void DirJccTerminator::handle_bkpt_fallthru(Tracee& tracee) {
    /* replace fallthru bkpt with jump */
    uint8_t *new_fallthru = lookup_block(orig_fallthru);
    const auto fallthru_inst = Instruction::jmp_relbrd(fallthru_addr, new_fallthru);
    write(fallthru_inst);
    flush(tracee);
    tracee.set_pc(new_fallthru);
    log_bkpt("FALLTHRU");
    add_decision('f');
  }

  void DirJccTerminator::handle_bkpt_jcc(Tracee& tracee) {
    /* replace jump instruction */
    uint8_t *new_dst = lookup_block(orig_dst);
    jcc_inst.retarget(new_dst);
    write(jcc_inst);
    tracee.set_pc(new_dst);
    flush(tracee);
    log_bkpt("JCC");
    add_decision('j');
  }

  void Terminator::handle_bkpt_singlestep(Tracee& tracee, uint8_t *& orig_pc, uint8_t *& new_pc) {
    /* 1. jump to original branch
     * 2. single step
     * 3. lookup block for new pc
     * 4. jump to block
     */
  
    /* 1 */
    tracee.set_pc(orig_branch_addr());

    /* 2 */
    tracee.singlestep();
    const Status status = tracee.wait();
    assert(status.stopped_trap()); (void) status;

    orig_pc = tracee.get_pc();
  
    /* 3 */
    new_pc = lookup_block(orig_pc);

    /* 4 */
    tracee.set_pc(new_pc);

    if (g_conf.dump_ss_bkpts) {
      fprintf(stderr, "bkpt %016lx ", (intptr_t) orig_branch_addr());
      std::cerr << "bkpt " << (void *) orig_branch_addr() << " -> "
		<< (void *) orig_pc << ": " << Instruction(orig_branch_addr(), tracee) << std::endl;
    }
  }

  void Terminator::handle_bkpt_singlestep(Tracee& tracee) {
    uint8_t *orig_pc;
    uint8_t *new_pc;
    handle_bkpt_singlestep(tracee, orig_pc, new_pc);
  }

  RetTerminator::RetTerminator(BlockPool& block_pool, TmpMem& tmp_mem, const Instruction& ret,
			       Tracees& tracees, const LookupBlock& lb, const RegisterBkpt& rb,
			       const ReturnStackBuffer& rsb):
    Terminator(block_pool, RET_SIZE, ret, tracees, lb)
  {
    /* write base */
    static const Data::Content bytes = {0x48, 0x87, 0x04, 0x24, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x9c, 0x51, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x48, 0x3b, 0x25, 0x00, 0x00, 0x00, 0x00, 0x74, 0x0e, 0x59, 0x48, 0x39, 0xc8, 0x59, 0x74, 0x07, 0x48, 0x8d, 0x0d, 0x26, 0x00, 0x00, 0x00, 0x48, 0x89, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x59, 0x9d, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x48, 0x87, 0x04, 0x24, 0x48, 0x8d, 0x64, 0x24, 0x08, 0xff, 0x25, 0x00, 0x00, 0x00, 0x00, 0x48, 0x8d, 0x64, 0x24, 0xf8, 0xcc};

    static Data data(nullptr, bytes);
    assert(data.size() == RET_SIZE);
    data.relocate(addr());
    write(data);

    /* create block-dependent instructions */
    uint8_t *a = addr();
    write(PCRelDisp(a + 0x04 + 3, a + 0x0b, (uint8_t *) tmp_mem.rsp()));   // xchg rsp, [rel tmp_rsp]
    write(PCRelDisp(a + 0x0d + 3, a + 0x14, (uint8_t *) rsb.ptr()));       // xchg rsp, [rel rsb_ptr]
    write(PCRelDisp(a + 0x14 + 3, a + 0x1b, (uint8_t *) rsb.begin()));     // cmp rsp, [rel rsp_begin]
    write(PCRelDisp(a + 0x2b + 3, a + 0x32, (uint8_t *) tmp_mem.begin())); // mov [rel tmp_0], rcx
    write(PCRelDisp(a + 0x32 + 3, a + 0x39, (uint8_t *) rsb.ptr()));       // xchg rsp, [rel rsb_ptr]
    write(PCRelDisp(a + 0x3b + 3, a + 0x42, (uint8_t *) tmp_mem.rsp()));   // xchg rsp, [rel tmp_rsp]
    write(PCRelDisp(a + 0x4b + 2, a + 0x51, (uint8_t *) tmp_mem.begin())); // jmp [rel tmp_0]
  
    flush(tracees);

    uint8_t *bkpt_addr = a + 0x56;
    rb(bkpt_addr, [this] (Tracee& tracee, auto addr) {
      std::cerr << "ret mismatch\n";
      this->handle_bkpt_singlestep(tracee);
    });
  }

  CallTerminator::CallTerminator(BlockPool& block_pool, PointerPool& ptr_pool, TmpMem& tmp_mem,
				 size_t size, const Instruction& call, Tracees& tracees,
				 const LookupBlock& lb, const ProbeBlock& pb,
				 const RegisterBkpt& rb, const ReturnStackBuffer& rsb):
    Terminator(block_pool, size + CALL_SIZE, call, tracees, lb)
  {
    uint8_t *bkpt_addr = subaddr() + size;

    /* allocate pointers */
    orig_ra_val = call.after_pc();
    uint8_t *new_ra_val;

    if ((new_ra_val = try_lookup_block(call.after_pc())) == nullptr) {
      new_ra_val = bkpt_addr;
    }
  
    uint8_t **orig_ra_ptr = (uint8_t **) ptr_pool.add((uintptr_t) orig_ra_val);
    new_ra_ptr = (uint8_t **) ptr_pool.add((uintptr_t) new_ra_val); // TODO: optimize -- check if TXed

    static const Data::Content bytes = {0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x9c, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x48, 0x3b, 0x25, 0x00, 0x00, 0x00, 0x00, 0x74, 0x0c, 0xff, 0x35, 0x00, 0x00, 0x00, 0x00, 0xff, 0x35, 0x00, 0x00, 0x00, 0x00, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x9d, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00};
  
    static Data data(nullptr, bytes);
    data.relocate(addr());
    write(data);

#if 1
    write(PCRelDisp(addr() + 0x00 + 3, addr() + 0x07, (uint8_t *) tmp_mem.rsp())); // xchg rsp, [rel tmp_rsp]
    write(PCRelDisp(addr() + 0x08 + 3, addr() + 0x0f, (uint8_t *) rsb.ptr())); // xchg rsp, [rel rsp_ptr]
    write(PCRelDisp(addr() + 0x0f + 3, addr() + 0x16, (uint8_t *) rsb.end())); // cmp rsp, [rel rsb_end]
    write(PCRelDisp(addr() + 0x18 + 2, addr() + 0x1e, (uint8_t *) new_ra_ptr)); // push qword [rel new_ra]
    write(PCRelDisp(addr() + 0x1e + 2, addr() + 0x24, (uint8_t *) orig_ra_ptr)); // push qword [rel orig_ra]
    write(PCRelDisp(addr() + 0x24 + 3, addr() + 0x2b, (uint8_t *) rsb.ptr())); // xchg rsp, [rel rsb_ptr]
    write(PCRelDisp(addr() + 0x2c + 3, addr() + 0x33, (uint8_t *) tmp_mem.rsp())); // xchg rsp, [rel tmp_rsp]
#elif 1
    static const struct {
      uint8_t pc;
      uint8_t iend;
    } disps[] = {{0x00 + 3, 0x07},
		 {0x08 + 3, 0x0f},
		 {0x0f + 3, 0x16},
		 {0x18 + 2, 0x1e},
		 {0x1e + 2, 0x24},
		 {0x24 + 3, 0x2b},
		 {0x2c + 3, 0x33},
    };
    uint8_t * const dsts [] = {
      (uint8_t *) tmp_mem.rsp(),
      (uint8_t *) rsb.ptr(),
      (uint8_t *) rsb.end(),
      (uint8_t *) new_ra_ptr,
      (uint8_t *) orig_ra_ptr,
      (uint8_t *) rsb.ptr(),
      (uint8_t *) tmp_mem.rsp(),
    };
    static_assert(arrlen(disps) == arrlen(dsts), "lengths mismatch");

    for (size_t i = 0; i < arrlen(disps); ++i) {
      write(PCRelDisp(addr() + disps[i].pc, addr() + disps[i].iend, dsts[i]));
    }
#endif

    /* post instructions */
    // TODO: Should delete this
    const auto bkpt = Instruction::int3(bkpt_addr);
    write(bkpt);
    rb(bkpt_addr, [&] (Tracee& tracee, auto addr) { this->handle_bkpt_ret(tracee); });
  }

  void CallTerminator::handle_bkpt_ret(Tracee& tracee) {
    // TODO: REMOVE: this
    std::abort();
    std::cerr << "warning: return address misprediction" << std::endl;
    uint8_t *new_ra_val = lookup_block(orig_ra_val);
    tracee.write(&new_ra_val, sizeof(new_ra_val), new_ra_ptr);
    tracee.set_pc(new_ra_val);
  }

  CallDirTerminator::CallDirTerminator(BlockPool& block_pool,
				       PointerPool& ptr_pool,
				       TmpMem& tmp_mem,
				       const Instruction& call,
				       Tracees& tracees,
				       const LookupBlock& lb,
				       const ProbeBlock& pb,
				       const RegisterBkpt& rb,
				       const ReturnStackBuffer& rsb):
    CallTerminator(block_pool, ptr_pool, tmp_mem, CALL_DIR_SIZE, call, tracees, lb, pb, rb, rsb)
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

    flush(tracees);
  }

  CallIndTerminator::CallIndTerminator(BlockPool& block_pool,
				       PointerPool& ptr_pool,
				       TmpMem& tmp_mem,
				       const Instruction& call,
				       Tracees& tracees,
				       const LookupBlock& lb,
				       const ProbeBlock& pb,
				       const RegisterBkpt& rb,
				       const ReturnStackBuffer& rsb):
    CallTerminator(block_pool, ptr_pool, tmp_mem, CALL_IND_SIZE, call, tracees, lb, pb, rb, rsb)
  {
    uint8_t *bkpt_addr = subaddr();
    const auto bkpt_inst = Instruction::int3(bkpt_addr);
    write(bkpt_inst);
    flush(tracees);
    rb(bkpt_addr, [&] (Tracee& tracee, auto addr) { this->handle_bkpt_singlestep(tracee); });
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
					       TmpMem& tmp_mem, const Instruction& jmp,
					       Tracees& tracees, const LookupBlock& lb,
					       const RegisterBkpt& rb):
    Terminator(block_pool, jmp_ind_size(jmp), jmp, tracees, lb)
  {
    /* make orig pointers */
    for (auto& orig : origs) {
      orig = (uint8_t **) ptr_pool.add((uintptr_t) nullptr);
    }
  
    uint8_t *it = addr();

    const auto xchg_pre = Instruction::xchg_rsp_mem(it, (uint8_t *) tmp_mem.rsp());
    write(xchg_pre);
    it += xchg_pre.size();
  
    const auto pushf = Instruction::pushf(it);
    it += pushf.size();
    const auto push_rax = Instruction::from_bytes(it, 0x50);
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
    const auto pop_rax = Instruction::from_bytes(it, 0x58);
    write(pop_rax);
    it += pop_rax.size();
    const auto popf = Instruction::popf(it);
    write(popf);
    it += popf.size();
    const auto xchg_post = Instruction::xchg_rsp_mem(it, (uint8_t *) tmp_mem.rsp());
    write(xchg_post);
    it += xchg_post.size();
  
    /* mismatch breakpoint */
    const auto mismatch_bkpt = Instruction::int3(it);
    it += mismatch_bkpt.size();
    write(mismatch_bkpt);
    rb(mismatch_bkpt.pc(), [&] (Tracee& tracee, auto addr) { this->handle_bkpt(tracee); });

    /* null breakpoint */
    const auto null_bkpt = Instruction::int3(it);
    it += null_bkpt.size();
    write(null_bkpt);
    rb(null_bkpt.pc(), [&] (Tracee& tracee, uint8_t *bkpt_addr) {
      std::cerr << "jumped to NULL" << std::endl;
      std::cerr << "pc: " << (void *) tracee.get_pc() << std::endl;
      const auto begin = addr();
      const auto end = begin + jmp_ind_size(jmp);
      tracee.disas(std::cerr, begin, end);
    
      std::abort();
    });
  
    assert(static_cast<size_t>(it - addr())
	   == JMP_IND_SIZE_base + JMP_IND_SIZE_cmp * CACHELEN + load_addr_size(jmp));
  
    /* matches */
    for (size_t i = 0; i < CACHELEN; ++i) {
      const auto pop_rax = Instruction::from_bytes(it, 0x58);
      write(pop_rax);
      it += pop_rax.size();
      const auto popf = Instruction::popf(it);
      write(popf);
      it += popf.size();
      const auto xchg_match = Instruction::xchg_rsp_mem(it, (uint8_t *) tmp_mem.rsp());
      write(xchg_match);
      it += xchg_match.size();
      newjmps[i] = Instruction::jmp_relbrd(it, null_bkpt.pc());
      write(newjmps[i]);
      it += newjmps[i].size();
    }

    flush(tracees);

    /* assertions */
    assert(jmp_ind_size(jmp) == static_cast<size_t>(it - addr()));
  }

  template <size_t CACHELEN>
  void JmpIndTerminator<CACHELEN>::handle_bkpt(Tracee& tracee) {
    uint8_t *orig_pc;
    uint8_t *new_pc;
    Terminator::handle_bkpt_singlestep(tracee, orig_pc, new_pc);

    /* Update cache: shift origs & newjmps down, add new pair at front.
     */
    const auto i = eviction_index;
    tracee.write(&orig_pc, sizeof(orig_pc), (uint8_t *) origs[i]);
    newjmps[i].retarget(new_pc);
    write(newjmps[i]);
    flush(tracee);
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
      const auto inst2 = Instruction::from_bytes(addr, 0x48, 0x8b, 0x00);
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
    const auto inst = Instruction::from_data(addr, newdata);
    write(inst);

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

}
