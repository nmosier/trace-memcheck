#include <cassert>
#include <algorithm>
#include <cstring>
#include "block.hh"
#include "block-pool.hh"
#include "settings.hh"

bool Block::Create(uint8_t *orig_addr, Tracee& tracee, BlockPool& block_pool,
		   PointerPool& ptr_pool, TmpMem& tmp_mem, const LookupBlock& lb,
		   const ProbeBlock& pb, const RegisterBkpt& rb, const ReturnStackBuffer& rsb,
		   const InsertBlock& ib, const Transformer& transformer,
		   const BkptCallback& syscall_pre, const BkptCallback& syscall_post,
		   ROMCache& rom_cache)
{
  Block *block = new Block(tracee, orig_addr);
  uint8_t *it = orig_addr;
  
  block->pool_addr_ = block_pool.peek();

  bool stop = false;

  std::vector<uint8_t> buf;
  uint8_t *newit = block_pool.peek();
  const auto append = [&] (const Blob& blob) {
    assert(newit == blob.pc());
    const auto data = blob.data();
    const auto size = blob.size();
    buf.insert(buf.end(), data, data + size);
    newit += size;
  };

  const auto flush = [&] (void) {
    assert(buf.size() == static_cast<size_t>(newit - block->pool_addr_));
    tracee.write(buf.data(), buf.size(), block->pool_addr_);
    block_pool.alloc(buf.size());
  };
  
  const Writer writer = [&] (Blob& blob) -> uint8_t * {
    // TODO: Refactor, esp. return statements.
    
    const auto inst = dynamic_cast<Instruction *>(&blob);

    if (inst == nullptr) {
      blob.relocate(newit);
      append(blob);
      return newit;
    }

    /* check if branch */
    stop = classify_inst(*inst);
    if (stop) {
      /* branch stuff */
      flush();
      ib(orig_addr, block);
      block->terminator_ = std::unique_ptr<Terminator>
	(Terminator::Create(block_pool, ptr_pool, tmp_mem, *inst, tracee, lb, pb, rb, rsb, *block));
      return nullptr; // rv shouldn't matter
    }

    const bool is_syscall = (inst->xed_iclass() == XED_ICLASS_SYSCALL);
    
    /* if is syscall, add breakpoint for checking maps */
    if (is_syscall) {
      auto syscall_pre_bkpt = Instruction::int3(newit);
      append(syscall_pre_bkpt);
      rb(syscall_pre_bkpt.pc(), syscall_pre);
    }

    /* relocate */
    if (inst->pc() != newit) {
      if (inst->xed_nmemops() > 0 && inst->xed_base_reg() == XED_REG_RIP) {
	block->transform_riprel_inst(newit, append, *inst, ptr_pool, tmp_mem);
	return newit;
      }
      
      inst->relocate(newit);
    }
    
    /* write instruction */
    append(*inst);

    if (is_syscall) {
      auto syscall_post_bkpt = Instruction::int3(newit);
      append(syscall_post_bkpt);
      rb(syscall_post_bkpt.pc(), syscall_post);
    }
    
    return newit;
  };

  Instruction inst;
  while (!stop) {
    if (PATCHER_USE_ROMCACHE) {
      inst = Instruction(it, rom_cache);
    } else {
      inst = Instruction(it, tracee);
    }

    if (!inst) {
      return false;
    }

    it += inst.size(); // update original PC

    transformer(newit, inst, writer);
  }

  return true;
}

template <typename Append>
void Block::transform_riprel_inst(uint8_t *& pc, const Append& append, const Instruction& inst,
				  PointerPool& ptr_pool, TmpMem& tmp_mem) {
  if (inst.xed_iclass() == XED_ICLASS_PUSH) {
    transform_riprel_push(pc, append, inst, ptr_pool);
    return;
  }

  Instruction::reg_t scrap_reg;
  
  switch (inst.xed_reg()) {
  case XED_REG_RAX:
  case XED_REG_EAX:
  case XED_REG_AX:
  case XED_REG_AH:
  case XED_REG_AL:
    scrap_reg = Instruction::reg_t::RCX;
    // assert(false); // TODO
    break;
  default:
    scrap_reg = Instruction::reg_t::RAX;
    break;
  }

  uint8_t *mem_dst = inst.mem_dst();
  uint8_t *ptr_addr =
    reinterpret_cast<uint8_t *>(ptr_pool.add(reinterpret_cast<uintptr_t>(mem_dst)));

  Instruction new_inst = inst;
  assert(inst.modrm_mod() == 0b00);
  assert(inst.modrm_rm() == 0b101);

  /* convert main instruction */
  const auto modrm_ptr = new_inst.modrm_ptr();
  std::copy(modrm_ptr + 5, new_inst.data() + new_inst.size(), modrm_ptr + 1);
  new_inst.modrm_rm(static_cast<uint8_t>(scrap_reg), true);

#if PRINT_RIPREL_TRANSLATIONS
  std::cerr << "orig inst: " << inst << std::endl;
#endif
  
  /* mov [rel tmp_0], rax
   * mov rax, [rel ptr]
   * OP dst, [rax] | OP [rax] | OP [rax], src
   * mov rax, [rel tmp_0]
   */

  append(Instruction::mov_mem64(pc, (uint8_t *) tmp_mem[0], scrap_reg));
  append(Instruction::mov_mem64(pc, scrap_reg, ptr_addr));
  new_inst.relocate(pc); append(new_inst); // OP
  append(Instruction::mov_mem64(pc, scrap_reg, (uint8_t *) tmp_mem[0]));
}

template <typename Append>
void Block::transform_riprel_push(uint8_t *& pc, const Append& append, const Instruction& push,
				  PointerPool& ptr_pool) {
  /* push rax
   * mov rax, [rel ptr]
   * mov rax, [rax]
   * xchg [rsp], rax
   */

  uint8_t *mem_dst = push.mem_dst();
  uint8_t *ptr_addr = (uint8_t *) ptr_pool.add((uintptr_t) mem_dst);
  
  append(Instruction::from_bytes(pc, 0x50)); // push rax
  append(Instruction::mov_mem64(pc, Instruction::reg_t::RAX, ptr_addr)); // mov rax, [rel ptr]
  append(Instruction::from_bytes(pc, 0x48, 0x8b, 0x00)); // mov rax, [rax]
  append(Instruction::from_bytes(pc, 0x48, 0x87, 0x04, 0x24)); // xchg rax, [rsp]
}

// returns true iff branch instruction
bool Block::classify_inst(xed_iclass_enum_t iclass) {
  switch (iclass) {
  case XED_ICLASS_JB:
  case XED_ICLASS_JBE:
  case XED_ICLASS_JCXZ:
  case XED_ICLASS_JECXZ:
  case XED_ICLASS_JL:
  case XED_ICLASS_JLE:
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
  case XED_ICLASS_JMP:
  case XED_ICLASS_CALL_NEAR:
  case XED_ICLASS_RET_NEAR:
    return true;

  default:
    return false;
  }
}

void Block::jump_to(void) const {
  tracee_.set_pc(pool_addr());
}
