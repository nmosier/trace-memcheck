#include <cassert>
#include <algorithm>
#include <cstring>
#include "block.hh"
#include "block-pool.hh"

size_t Block::size(const InstVec& insts) {
  return std::accumulate(insts.begin(), insts.end(), 0,
			 [] (size_t acc, const auto& inst) {
			   return acc + inst->size();
			 });
}

Block *Block::Create(uint8_t *orig_addr, const Tracee& tracee, BlockPool& block_pool,
		     PointerPool& ptr_pool, LookupBlock lb) {
  Block *block = new Block(tracee, orig_addr, block_pool);

  uint8_t *it = orig_addr;
  uint8_t *newit = block_pool.peek();
  std::unique_ptr<Instruction> inst;

  /* get non-branch instructions */
  while (true) {
    inst = std::make_unique<Instruction>(it, tracee);
    assert(*inst);

    it += inst->size(); // update original PC
    
    if (classify_inst(*inst)) {
      break;
    }

    /* relocate instruction and add to list */
    inst->relocate(newit);
    newit += inst->size();
    block->insts_.push_back(std::move(inst));
  }

  block->orig_branch_ = *inst;
  block->pool_addr_ = block_pool.alloc(size(block->insts_));
  block_pool.write_insts(block->pool_addr_, block->insts_);
  
  /* create terminator instructions */
  block->terminator_ =
    std::unique_ptr<Terminator>(Terminator::Create(block_pool, *inst, tracee, lb));

  
  
  return block;
}

template <typename OutputIt>
uint8_t *Block::transform_riprel_inst(uint8_t *pc, const Instruction& inst, OutputIt out_it,
				      PointerPool& ptr_pool) {
  switch (inst.xed_reg()) {
  case XED_REG_RAX:
  case XED_REG_EAX:
  case XED_REG_AX:
  case XED_REG_AH:
  case XED_REG_AL:
    abort(); // TODO: handle this case
  default:
    break;
  }

  assert(inst.xed_iclass() != XED_ICLASS_PUSH); // TODO: handle this case

  uint8_t *mem_dst = inst.mem_dst();
  uint8_t *ptr_addr = ptr_pool.add(reinterpret_cast<uintptr_t>(mem_dst));

  Instruction new_inst = inst;
  assert(inst.modrm_mod() == 0b00);
  assert(inst.modrm_rm() == 0b101);
  new_inst.modrm_rm(0b000); // RAX
  
  /* push rax
   * mov rax, [rel ptr]
   * OP dst, [rax] | OP [rax] | OP [rax], src
   * pop rax
   */

  auto add_inst = [&] (const auto& arg) {
    auto inst = std::make_unique<Instruction>(arg);
    pc += inst->size();
    *out_it++ = std::move(inst);
  };
  
  add_inst(pc, {0x50}); // push rax
  add_inst(Instruction::mov_mem64(pc, Instruction::reg_t::RAX, ptr_addr));
  new_inst.relocate(pc); add_inst(new_inst); // OP
  add_inst(pc, {0x58}); // pop rax

  return pc;
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

bool Block::may_have_conditional_branch(void) const {
  const auto iclass = orig_branch_.xed_iclass();
  if (iclass == XED_ICLASS_CALL_NEAR ||
      iclass == XED_ICLASS_JMP ||
      iclass == XED_ICLASS_RET_NEAR) {
    return false;
  } else {
    return true;
  }
}
