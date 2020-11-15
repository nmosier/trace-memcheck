#include <cassert>
#include <algorithm>
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

    block->insts_.push_back(std::make_unique<Instruction>(inst));
  }

  block->orig_branch_ = inst;

  block->branch_insts_.push_back
    (std::make_unique<Instruction>(nullptr, Instruction::Data {0xcc}));
  block->fallthrough_insts_.push_back
    (std::make_unique<Instruction>(nullptr, Instruction::Data {0xcc}));

  /* allocate space */
  block->maxsize_ = size(block->insts_) + Instruction::max_inst_len * 2;
  block->pool_addr_ = block->block_pool_.alloc(block->maxsize_);
  
  /* write (& relocate) instructions */
  block->write();
  
  return block;
}

void Block::write(void) {
  uint8_t *addr = pool_addr_;
  addr = block_pool_.write_insts(addr, insts_);
  addr = block_pool_.write_insts(addr, branch_insts_);
  addr = block_pool_.write_insts(addr, fallthrough_insts_);
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

uint8_t *BlockPool::write_inst(uint8_t *addr, Blob& inst) {
  inst.relocate(addr);
  tracee.write(inst);
  return addr + inst.size();
}

void Block::jump_to(void) const {
  tracee_.set_pc(pool_addr());
}

void Block::handle_bkpt(const HandleBkptIface& iface) {
  switch (expect_bkpt_) {
  case BkptKind::BRANCH:
    handle_bkpt_branch(iface);
    break;
  case BkptKind::FALLTHROUGH:
    handle_bkpt_fallthrough(iface);
    break;
  default: abort();
  }
}

void Block::handle_bkpt_branch(const HandleBkptIface& iface) {
  assert(branch_insts_.size() == 1);
  switch (kind()) {
  case Kind::DIR:
    handle_bkpt_branch_dir(iface);
    break;
  case Kind::IND:
    handle_bkpt_branch_ind(iface);
    break;
  default: abort();
  }
}

void Block::handle_bkpt_branch_dir(const HandleBkptIface& iface) {
  Instruction branch = orig_branch_;

  uint8_t *branch_pool_dst = iface.lb(orig_branch_.branch_dst());
  branch.retarget(branch_pool_dst);
  branch_insts_.front() = std::make_unique<Instruction>(branch);

  write();
  
  expect_bkpt_ = BkptKind::FALLTHROUGH;
}

void Block::handle_bkpt_branch_ind(const HandleBkptIface& iface) {
  branch_insts_.front() = std::make_unique<Instruction>(orig_branch_);
  write();

  /* single-step thru indirect branch */
  iface.ss();

  /* patch destination block */
  iface.pb(tracee_.get_pc());

  /* TODO:
   * Need to set branch and then single-step through. Then patch as necessary.
   *
   */

  
  // TODO
  abort();
}

void Block::handle_bkpt_fallthrough(const HandleBkptIface& iface) {
  
}
