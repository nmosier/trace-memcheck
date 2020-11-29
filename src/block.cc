#include <cassert>
#include <algorithm>
#include <cstring>
#include "block.hh"
#include "block-pool.hh"
#include "debug.h"

size_t Block::size(const InstVec& insts) {
  return std::accumulate(insts.begin(), insts.end(), 0,
			 [] (size_t acc, const auto& inst) {
			   return acc + inst->size();
			 });
}

bool Block::Create(uint8_t *orig_addr, Tracee& tracee, BlockPool& block_pool,
		   PointerPool& ptr_pool, const LookupBlock& lb, const ProbeBlock& pb,
		   const RegisterBkpt& rb, const ReturnStackBuffer& rsb, const InsertBlock& ib) {
  Block *block = new Block(tracee, orig_addr, block_pool);

  uint8_t *it = orig_addr;
  uint8_t *newit = block_pool.peek();
  std::unique_ptr<Instruction> inst;

  /* get non-branch instructions */
  while (true) {
    inst = std::make_unique<Instruction>(it, tracee);
    if (!*inst) {
      return false;
    }

    it += inst->size(); // update original PC
    
    if (classify_inst(*inst)) {
      break;
    }

    if (inst->xed_nmemops() > 0 && inst->xed_base_reg() == XED_REG_RIP) {
      newit = transform_riprel_inst(newit, *inst,
				    std::inserter(block->insts_, block->insts_.end()), ptr_pool);
    } else {
      /* relocate instruction and add to list */
      inst->relocate(newit);
      newit += inst->size();
      block->insts_.push_back(std::move(inst));
    }
  }

  block->orig_branch_ = *inst;
  block->pool_addr_ = block_pool.alloc(size(block->insts_));
  block_pool.write_insts(block->pool_addr_, block->insts_);

  ib(orig_addr, block);
  
  /* create terminator instructions */
  block->terminator_ =
    std::unique_ptr<Terminator>
    (Terminator::Create(block_pool, ptr_pool, *inst, tracee, lb, pb, rb, rsb, *block));
  
  return true;
}

template <typename OutputIt>
uint8_t *Block::transform_riprel_inst(uint8_t *pc, const Instruction& inst, OutputIt out_it,
				      PointerPool& ptr_pool) {
  auto add_inst = [&] (const auto& arg) {
    auto inst = std::make_unique<Instruction>(arg);

#if PRINT_RIPREL_TRANSLATIONS
    std::clog << "new inst:  " << *inst << std::endl;
#endif
    
    pc += inst->size();
    *out_it++ = std::move(inst);
  };

  if (inst.xed_iclass() == XED_ICLASS_PUSH) {
    transform_riprel_push(pc, add_inst, inst, ptr_pool);
    return pc;
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
  new_inst.modrm_rm(static_cast<uint8_t>(scrap_reg));

#if PRINT_RIPREL_TRANSLATIONS
  std::clog << "orig inst: " << inst << std::endl;
#endif
  
  /* push rax
   * mov rax, [rel ptr]
   * OP dst, [rax] | OP [rax] | OP [rax], src
   * pop rax
   */

  add_inst(Instruction::push_reg(pc, scrap_reg));
  add_inst(Instruction::mov_mem64(pc, scrap_reg, ptr_addr));
  new_inst.relocate(pc); add_inst(new_inst); // OP
  add_inst(Instruction::pop_reg(pc, scrap_reg));

  return pc;
}

template <typename AddInst>
void Block::transform_riprel_push(uint8_t*& pc, AddInst add_inst, const Instruction& push,
				  PointerPool& ptr_pool) {
  /* push rax
   * mov rax, [rel ptr]
   * mov rax, [rax]
   * xchg [rsp], rax
   */

  uint8_t *mem_dst = push.mem_dst();
  uint8_t *ptr_addr = (uint8_t *) ptr_pool.add((uintptr_t) mem_dst);
  
  add_inst(Instruction(pc, {0x50})); // push rax
  add_inst(Instruction::mov_mem64(pc, Instruction::reg_t::RAX, ptr_addr)); // mov rax, [rel ptr]
  add_inst(Instruction(pc, {0x48, 0x8b, 0x00})); // mov rax, [rax]
  add_inst(Instruction(pc, {0x48, 0x87, 0x04, 0x24})); // xchg rax, [rsp]
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

uint8_t *BlockPool::alloc(size_t size) {
  assert(alloc_ptr + size <= mem.end<uint8_t>());
  uint8_t *ptr = alloc_ptr;
  alloc_ptr += size;
  return ptr;
}

std::ostream& BlockPool::print(std::ostream& os) const {
  uint8_t *begin = mem.begin<uint8_t>();
  size_t size = peek() - begin;
  uint8_t *buf = (uint8_t *) malloc(size);
  assert(buf != nullptr);
  for (uint8_t *it = buf; it < buf + size; ) {
    Instruction inst(it, tracee);
    os << inst << std::endl;
    it += inst.size();
  }
  return os;
}

uint8_t *BlockPool::write_inst(uint8_t *addr, Blob& inst) {
  inst.relocate(addr);
  tracee.write(inst);
  return addr + inst.size();
}

void Block::jump_to(void) const {
  tracee_.set_pc(pool_addr());
}
