extern "C" {
#include <xed/xed-interface.h>
}

#include <assert.h>
#include <stdio.h>
#include <sys/ptrace.h>
#include <vector>
#include <unistd.h>
#include <sys/wait.h>

#include "branches.hh"
#include "util.hh"

void BranchPatcher::patch(void *root_) {
  uint8_t *root = (uint8_t *) root_;
  /* Main Algorithm:
   * - Find next branch
   * - If CALL, then set breakpoint 
   */
  std::vector<uint8_t *> todo = {root}; // todo addresses
  while (!todo.empty()) {
    xed_decoded_inst_t xedd;
    InstClass iclass;
    BkptKind bkpt_kind;
    uint8_t *start_pc = todo.back();
    todo.pop_back();

    uint8_t *pc = (uint8_t *) find_branch(start_pc, xedd, iclass);

    uint8_t *next_pc = pc + xed_decoded_inst_get_length(&xedd);

    /* find the next branch */
    pc = find_branch(pc, xedd, iclass);

    if (processed_branches.find(pc) != processed_branches.end()) {
      continue;
    }

    processed_branches.insert(pc);

    bkpt_kind = get_bkpt_kind(xed_decoded_inst_get_iform_enum(&xedd));
    const unsigned instlen = xed_decoded_inst_get_length(&xedd);

    switch (bkpt_kind) {
    case BkptKind::JUMP_DIR:
      if (jmp_can_fallthrough(xed_decoded_inst_get_iclass(&xedd))) {
	todo.push_back(next_pc);
      }
      todo.push_back(get_dst(xedd, bkpt_kind, pc));
      break;
      
    case BkptKind::JUMP_IND:
    case BkptKind::CALL_IND:
      insert_bkpt(pc, bkpt_kind, instlen);
      break;

    case BkptKind::CALL_DIR:
      if (returning_calls.find(pc) == returning_calls.end()) {
	/* not known whether this call returns, so break here */
	insert_bkpt(pc, bkpt_kind, instlen);
	todo.push_back(get_dst(xedd, bkpt_kind, pc));
      } else {
	/* this call returns, and we've already examined the destination, so add next instruction
	 * to queue*/
	todo.push_back(next_pc);
      }
      break;

    case BkptKind::RET:
      break;

    default:
      assert(false);
    }
  }
}

uint8_t *BranchPatcher::find_branch(uint8_t *pc, xed_decoded_inst_t& xedd, InstClass& iclass) {
  const bool decoded = decoder.decode(pc, xedd);
  assert(decoded);
  iclass = classify(xed_decoded_inst_get_iclass(&xedd));
  while (iclass == InstClass::OTHER) {
    pc += xed_decoded_inst_get_length(&xedd);
    const bool decoded = decoder.decode(pc, xedd);
    assert(decoded);
    iclass = classify(xed_decoded_inst_get_iclass(&xedd));
  }
  return pc;
}

bool BranchPatcher::iclass_is_jump(xed_iclass_enum_t iclass) {
  switch (iclass) {
  case XED_ICLASS_JB:
  case XED_ICLASS_JBE:
  case XED_ICLASS_JCXZ:
  case XED_ICLASS_JECXZ:
  case XED_ICLASS_JL:
  case XED_ICLASS_JLE:
  case XED_ICLASS_JMP:
  case XED_ICLASS_JMP_FAR:
  case XED_ICLASS_JNB:
  case XED_ICLASS_JNBE:
  case XED_ICLASS_JNL:
  case XED_ICLASS_JNLE:
  case XED_ICLASS_JNO:
  case XED_ICLASS_JNP:
  case XED_ICLASS_JNS:
  case XED_ICLASS_JNZ:
  case XED_ICLASS_JO:
  case XED_ICLASS_JP:
  case XED_ICLASS_JRCXZ:
  case XED_ICLASS_JS:
  case XED_ICLASS_JZ:
    return true;
  default:
    return false;
  }
}

bool BranchPatcher::iclass_is_call(xed_iclass_enum_t iclass) {
  switch (iclass) {
  case XED_ICLASS_CALL_FAR:
  case XED_ICLASS_CALL_NEAR:
    return true;
  default:
    return false;
  }
}

bool BranchPatcher::iclass_is_ret(xed_iclass_enum_t iclass) {
  switch (iclass) {
  case XED_ICLASS_RET_FAR:
  case XED_ICLASS_RET_NEAR:
    return true;
  default:
    return false;
  }
}

BranchPatcher::InstClass BranchPatcher::classify(xed_iclass_enum_t iclass) {
  if (iclass_is_jump(iclass)) {
    return InstClass::JUMP;
  } else if (iclass_is_call(iclass)) {
    return InstClass::CALL;
  } else if (iclass_is_ret(iclass)) {
    return InstClass::RET;
  } else {
    return InstClass::OTHER;
  }
}

BranchPatcher::BkptKind BranchPatcher::get_bkpt_kind(xed_iform_enum_t iform) {
  switch (iform) {
  case XED_IFORM_JMP_GPRv:
  case XED_IFORM_JMP_MEMv:
  case XED_IFORM_JMP_FAR_MEMp2:
  case XED_IFORM_JMP_FAR_PTRp_IMMw:
    return BkptKind::JUMP_IND;
    
  case XED_IFORM_CALL_FAR_MEMp2:
  case XED_IFORM_CALL_FAR_PTRp_IMMw:
  case XED_IFORM_CALL_NEAR_GPRv:
  case XED_IFORM_CALL_NEAR_MEMv:
    return BkptKind::CALL_IND;

  case XED_IFORM_JB_RELBRb:
  case XED_IFORM_JB_RELBRd:
  case XED_IFORM_JB_RELBRz:
  case XED_IFORM_JBE_RELBRb:
  case XED_IFORM_JBE_RELBRd:
  case XED_IFORM_JBE_RELBRz:
  case XED_IFORM_JCXZ_RELBRb:
  case XED_IFORM_JECXZ_RELBRb:
  case XED_IFORM_JL_RELBRb:
  case XED_IFORM_JL_RELBRd:
  case XED_IFORM_JL_RELBRz:
  case XED_IFORM_JLE_RELBRb:
  case XED_IFORM_JLE_RELBRd:
  case XED_IFORM_JLE_RELBRz:
  case XED_IFORM_JMP_RELBRb:
  case XED_IFORM_JMP_RELBRd:
  case XED_IFORM_JMP_RELBRz:
  case XED_IFORM_JNB_RELBRb:
  case XED_IFORM_JNB_RELBRd:
  case XED_IFORM_JNB_RELBRz:
  case XED_IFORM_JNBE_RELBRb:
  case XED_IFORM_JNBE_RELBRd:
  case XED_IFORM_JNBE_RELBRz:
  case XED_IFORM_JNL_RELBRb:
  case XED_IFORM_JNL_RELBRd:
  case XED_IFORM_JNL_RELBRz:
  case XED_IFORM_JNLE_RELBRb:
  case XED_IFORM_JNLE_RELBRd:
  case XED_IFORM_JNLE_RELBRz:
  case XED_IFORM_JNO_RELBRb:
  case XED_IFORM_JNO_RELBRd:
  case XED_IFORM_JNO_RELBRz:
  case XED_IFORM_JNP_RELBRb:
  case XED_IFORM_JNP_RELBRd:
  case XED_IFORM_JNP_RELBRz:
  case XED_IFORM_JNS_RELBRb:
  case XED_IFORM_JNS_RELBRd:
  case XED_IFORM_JNS_RELBRz:
  case XED_IFORM_JNZ_RELBRb:
  case XED_IFORM_JNZ_RELBRd:
  case XED_IFORM_JNZ_RELBRz:
  case XED_IFORM_JO_RELBRb:
  case XED_IFORM_JO_RELBRd:
  case XED_IFORM_JO_RELBRz:
  case XED_IFORM_JP_RELBRb:
  case XED_IFORM_JP_RELBRd:
  case XED_IFORM_JP_RELBRz:
  case XED_IFORM_JRCXZ_RELBRb:
  case XED_IFORM_JS_RELBRb:
  case XED_IFORM_JS_RELBRd:
  case XED_IFORM_JS_RELBRz:
  case XED_IFORM_JZ_RELBRb:
  case XED_IFORM_JZ_RELBRd:
  case XED_IFORM_JZ_RELBRz:
    return BkptKind::JUMP_DIR;

  case XED_IFORM_CALL_NEAR_RELBRd:
  case XED_IFORM_CALL_NEAR_RELBRz:
    return BkptKind::CALL_DIR;

  case XED_IFORM_RET_FAR:
  case XED_IFORM_RET_FAR_IMMw:
  case XED_IFORM_RET_NEAR:
  case XED_IFORM_RET_NEAR_IMMw:
    return BkptKind::RET;
    
  default:
    assert(false);
  }
}

uint8_t *BranchPatcher::get_dst(xed_decoded_inst_t& xedd, BkptKind iform, uint8_t *pc) {
  switch (iform) {
  case BkptKind::JUMP_DIR:
  case BkptKind::CALL_DIR:
    return pc + xed_decoded_inst_get_length(&xedd) +
      xed_decoded_inst_get_branch_displacement(&xedd);
    
  case BkptKind::JUMP_IND:
  case BkptKind::CALL_IND:
    return nullptr;

  default:
    assert(false);
  }
}

bool BranchPatcher::jmp_can_fallthrough(xed_iclass_enum_t xed_iclass) {
  switch (xed_iclass) {
  case XED_ICLASS_JMP:
  case XED_ICLASS_JMP_FAR:
    return true;

  default:
    return false;
  }
}

void BranchPatcher::insert_bkpt(uint8_t *pc, BkptKind iform, unsigned instlen) {
  /* get opcode to save */
  uint8_t opcode;
  ssize_t bytes_read;
  if ((bytes_read = pread(fd, &opcode, 1, (off_t) pc)) < 0) {
    perror("pread");
    abort();
  }
  assert(bytes_read == 1);

  assert(bkpt_map.find(pc) == bkpt_map.end());
  bkpt_map[pc].opcode = opcode;
  bkpt_map[pc].iform = iform;
  bkpt_map[pc].instlen = instlen;

  /* set opcode */
  write_inst_byte(pc, 0xcc);
}

bool BranchPatcher::owns_bkpt(void *pc) const {
  return bkpt_map.find((uint8_t *) pc) != bkpt_map.end();
}

void BranchPatcher::handle_bkpt(void *pc_) {
  uint8_t *pc = (uint8_t *) pc_;
  BranchInfo& branch_info = bkpt_map.at(pc);

  printf("bkpt pc = %p, kind = %s\n", pc, bkpt_kind_to_str(branch_info.iform));

  switch (branch_info.iform) {
  case BkptKind::JUMP_IND:
    single_step_bkpt(pc);
    patch(get_pc(pid));
    break;
    
  case BkptKind::CALL_IND:
    single_step_bkpt(pc);
    insert_bkpt(pc + 1, BkptKind::CALL_IND_PEND, branch_info.instlen);
    patch(get_pc(pid));
    set_retaddr(pc + 1);
    break;

  case BkptKind::CALL_DIR:
    /* we know that it is unknown whether this function returns */
    assert(returning_calls.find(pc) == returning_calls.end());
    single_step_bkpt(pc);
    insert_bkpt(pc + 1, BkptKind::CALL_DIR_PEND, branch_info.instlen);
    set_retaddr(pc + 1);
    break;

  case BkptKind::CALL_DIR_PEND:
    {
      /* this function does return.
       * - disable pending and call breakpoints
       * - add to list of returning calls 
     */
      assert(returning_calls.find(pc - 1) == returning_calls.end());
      returning_calls.insert(pc - 1);
      remove_bkpt(pc); // pending breakpoint
      remove_bkpt(pc - 1); // call breakpoint
      uint8_t *next_pc = pc - 1 + branch_info.instlen;
      set_pc(pid, (void *) next_pc);
      patch(next_pc);
    }
    break;

  case BkptKind::CALL_IND_PEND:
    {
      /* This call does return */
      returning_calls.insert(pc - 1);
      remove_bkpt(pc);
      uint8_t *next_pc = pc - 1 + branch_info.instlen;
      set_pc(pid, (void *) next_pc);
      patch(next_pc);
    }
    break;
    
  case BkptKind::JUMP_DIR:
  case BkptKind::RET:
    assert(false);
  }
  
}

void BranchPatcher::remove_bkpt(uint8_t *pc) {
  const auto it = bkpt_map.find(pc);
  assert(it != bkpt_map.end());

  ssize_t bytes_written;
  if ((bytes_written = pwrite(fd, &it->second.opcode, 1, (off_t) pc)) < 0) {
    perror("pwrite");
    abort();
  }
  assert(bytes_written == 1);

  bkpt_map.erase(it);
}

void BranchPatcher::write_inst_byte(uint8_t *pc, uint8_t opcode) {
  ssize_t bytes;
  if ((bytes = pwrite(fd, &opcode, 1, (off_t) pc)) < 0) {
    perror("pwrite");
    abort();
  }
  assert(bytes == 1);

#if 1
  uint8_t opcode2;
  pread(fd, &opcode2, 1, (off_t) pc);
  assert(opcode == opcode2);
#endif
}

void BranchPatcher::single_step_bkpt(uint8_t *pc) {
  /* restore original instruction */
  write_inst_byte(pc, bkpt_map.at(pc).opcode);

  /* single step */
  if (ptrace(PTRACE_SINGLESTEP, pid, nullptr, nullptr) < 0) {
    perror("ptrace");
    abort();
  }
  int status;
  if (wait(&status) < 0) {
    perror("wait");
  }
  assert(WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP);

  /* re-enable breakpoint */
  write_inst_byte(pc, 0xcc);
}

void BranchPatcher::set_retaddr(uint8_t *ra) {
  uint64_t *sp = (uint64_t *) get_sp(pid);
  pwrite(fd, &ra, sizeof(ra), (off_t) sp);
}

const char *BranchPatcher::bkpt_kind_to_str(BkptKind kind) {
  switch (kind) {
  case BkptKind::JUMP_DIR:      return "JUMP_DIR";
  case BkptKind::JUMP_IND:      return "JUMP_IND";
  case BkptKind::CALL_DIR:      return "CALL_DIR";
  case BkptKind::CALL_IND:      return "CALL_IND";
  case BkptKind::RET:           return "RET";
  case BkptKind::CALL_DIR_PEND: return "CALL_DIR_PEND";
  case BkptKind::CALL_IND_PEND: return "CALL_IND_PEND";
  }
}

void BranchPatcher::print_bkpts(void) const {
  for (const auto& it : bkpt_map) {
    printf("bkpt %p %s\n", it.first, bkpt_kind_to_str(it.second.iform));
  }
}
