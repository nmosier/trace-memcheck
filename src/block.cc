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

Block *Block::Create(uint8_t *orig_addr, const Tracee& tracee, BlockPool& block_pool) {
  Block *block = new Block(tracee, orig_addr, block_pool);

  uint8_t *it = orig_addr;
  uint8_t *newit = block_pool.peek();
  std::unique_ptr<Instruction> inst;

  /* get non-branch instructions */
  while (true) {
    inst = std::make_unique<Instruction>(it, tracee);
    assert(*inst);

    it += inst->size(); // update original PC
    
    block->kind_ = classify_inst(*inst);
    
    if (block->kind_ != Kind::OTH) {
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
  switch (block->kind_) {
  case Kind::DIR:
    block->terminator_ = std::make_unique<DirectTerminator>(block_pool, *inst, tracee);
    break;
    
  case Kind::IND:
    block->terminator_ = std::make_unique<IndirectTerminator>(block_pool, *inst, tracee);
    break;

  default:
    assert(false);
  }

  return block;
}

void Block::write_insts(void) {
  block_pool_.write_insts(pool_addr(), insts_);
}

Block::Kind Block::classify_inst(xed_iclass_enum_t iclass, xed_iform_enum_t iform) {
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
    return Kind::DIR;

  case XED_ICLASS_JMP:
    switch (iform) {
    case XED_IFORM_JMP_GPRv:
    case XED_IFORM_JMP_MEMv:
      return Kind::IND;
    case XED_IFORM_JMP_RELBRb:
    case XED_IFORM_JMP_RELBRd:
      return Kind::DIR;
    default: abort();
    }
    
  case XED_ICLASS_CALL_NEAR:
    switch (iform) {
    case XED_IFORM_CALL_NEAR_GPRv:
    case XED_IFORM_CALL_NEAR_MEMv:
      return Kind::IND;
    case XED_IFORM_CALL_NEAR_RELBRd:
      return Kind::DIR;
    default: abort();
    }

  case XED_ICLASS_RET_NEAR:
    return Kind::IND;

  default:
    return Kind::OTH;
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

const char *Block::kind_to_str(Kind kind) {
  switch (kind) {
  case Kind::DIR: return "DIR";
  case Kind::IND: return "IND";
  default: return nullptr;
  }
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
