#include <cassert>
#include <algorithm>
#include "block.hh"
#include "block-pool.hh"

size_t Block::size() const {
  return std::accumulate(insts().begin(), insts().end(), 0,
			 [] (size_t acc, const Instruction& inst) {
			   return acc + inst.size();
			 });
}

Block *Block::Create(uint8_t *orig_addr, const Tracee& tracee, BlockPool& block_pool) {
  Block *block = new Block(tracee, orig_addr, block_pool);

  uint8_t *it = orig_addr;
  Instruction inst;

  /* get non-branch instructions */
  while (true) {
    inst = Instruction(it, tracee);
    assert(inst);

    it += inst.size();

    block->kind_ = classify_inst(inst);

    if (block->kind_ != Kind::OTH) {
      break;
    }

    block->insts_.push_back(inst);
  }

  block->orig_branch_ = inst;

  block->insts_.emplace_back(nullptr, Instruction::Data {0xcc}); // add branch breakpoint
  block->insts_.emplace_back(nullptr, Instruction::Data {0xcc}); // add fallthrough breakpoint

  /* relocate instructions */
  block->pool_addr_ = block->block_pool_.add_insts(block->insts_.begin(), block->insts_.end());

  /* allocate a bit of extra space for later */
  block->block_pool_.alloc(Instruction::max_inst_len * 2);

  return block;
}

void Block::write(void) const {
  for (const Instruction& inst : insts()) {
    tracee_.write(inst);
  }
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
  size_t size = alloc_next() - begin;
  uint8_t *buf = (uint8_t *) malloc(size);
  assert(buf != nullptr);
  for (uint8_t *it = buf; it < buf + size; ) {
    Instruction inst(it, tracee);
    os << inst << std::endl;
    it += inst.size();
  }
  return os;
}

uint8_t *BlockPool::add_inst(Instruction& inst) {
  uint8_t *addr = alloc_next();
  inst.relocate(addr);
  alloc(inst.size());
  tracee.write(inst);
  return addr;
}

void Block::jump_to(void) const {
  tracee_.set_pc(pool_addr());
}

void Block::handle_bkpt(void) {
  // TODO
  abort();
}
