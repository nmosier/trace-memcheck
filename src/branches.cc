extern "C" {
#include <xed/xed-interface.h>
}

#include <assert.h>
#include <stdio.h>
#include <sys/ptrace.h>
#include <vector>
#include <unistd.h>

#include "branches.hh"

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
    InstForm iform;
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

    printf("processing branch %p\n", pc);

    iform = get_iform(xed_decoded_inst_get_iform_enum(&xedd));

    switch (iform) {
    case InstForm::JUMP_DIR:
      if (jmp_can_fallthrough(xed_decoded_inst_get_iclass(&xedd))) {
	todo.push_back(next_pc);
      }
      todo.push_back(get_dst(xedd, iform, pc));
      break;
      
    case InstForm::JUMP_IND:
    case InstForm::CALL_IND:
      insert_bkpt(pc, iform);
      break;

    case InstForm::CALL_DIR:
      if (returning_calls.find(get_dst(xedd, iform, pc)) == returning_calls.end()) {
	/* not known whether this call returns, so break here */
	insert_bkpt(pc, iform);
	todo.push_back(get_dst(xedd, iform, pc));
      } else {
	/* this call returns, and we've already examined the destinatino, so add next instruction
	 * to queue*/
	todo.push_back(next_pc);
      }
      break;

    case InstForm::RET:
      break;

    default:
      assert(false);
    }
  }

  printf("done!\n");
  printf("patched %zu branches\n", bkpt_map.size());
  for (uint8_t *ptr : processed_branches) {
    printf("%p\n", ptr);
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

BranchPatcher::InstForm BranchPatcher::get_iform(xed_iform_enum_t iform) {
  switch (iform) {
  case XED_IFORM_JMP_GPRv:
  case XED_IFORM_JMP_MEMv:
  case XED_IFORM_JMP_FAR_MEMp2:
  case XED_IFORM_JMP_FAR_PTRp_IMMw:
    return InstForm::JUMP_IND;
    
  case XED_IFORM_CALL_FAR_MEMp2:
  case XED_IFORM_CALL_FAR_PTRp_IMMw:
  case XED_IFORM_CALL_NEAR_GPRv:
  case XED_IFORM_CALL_NEAR_MEMv:
    return InstForm::CALL_IND;

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
    return InstForm::JUMP_DIR;

  case XED_IFORM_CALL_NEAR_RELBRd:
  case XED_IFORM_CALL_NEAR_RELBRz:
    return InstForm::CALL_DIR;

  case XED_IFORM_RET_FAR:
  case XED_IFORM_RET_FAR_IMMw:
  case XED_IFORM_RET_NEAR:
  case XED_IFORM_RET_NEAR_IMMw:
    return InstForm::RET;
    
  default:
    return InstForm::OTHER;
  }
}

uint8_t *BranchPatcher::get_dst(xed_decoded_inst_t& xedd, InstForm iform, uint8_t *pc) {
  switch (iform) {
  case InstForm::JUMP_DIR:
  case InstForm::CALL_DIR:
    return pc + xed_decoded_inst_get_length(&xedd) +
      xed_decoded_inst_get_branch_displacement(&xedd);
    
  case InstForm::JUMP_IND:
  case InstForm::CALL_IND:
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

void BranchPatcher::insert_bkpt(uint8_t *pc, InstForm iform) {
  /* get opcode to save */
  uint8_t opcode;
  ssize_t bytes_read;
  if ((bytes_read = pread(fd, &opcode, 1, (off_t) pc)) < 0) {
    perror("pread");
    abort();
  }
  assert(bytes_read == 1);

  assert(bkpt_map.find(pc) == bkpt_map.end());
  bkpt_map[pc] = {opcode, iform};
}
