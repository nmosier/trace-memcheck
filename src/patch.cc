#include <unordered_set>
#include "patch.hh"

Patcher::Patcher(Tracee& tracee): tracee(tracee), block_pool(tracee, block_pool_size) {}

void Patcher::patch(uint8_t *root) {
  std::vector<uint8_t *> todo = {root};
  while (!todo.empty()) {
    uint8_t *pc = todo.back();
    todo.pop_back();
    if (block_map.find(pc) == block_map.end()) {
      patch_one(pc, std::back_inserter(todo));
    }
  }
}

template <typename OutputIt>
void Patcher::patch_one(uint8_t *start_pc, OutputIt output_it) {
  const auto lb = [&] (uint8_t *addr) -> uint8_t * {
    return lookup_block_patch(addr).pool_addr();
  }; // TODO: unify this with other def of lb

  /* create block */
  Block *block = Block::Create(start_pc, tracee, block_pool, lb);
  const auto block_it = block_map.emplace(start_pc, block);
  const auto pool2block_it = pool2block_map.emplace(block->pool_addr(), block);
  assert(block_it.second);
  assert(pool2block_it.second);

  /* add todo blocks */
  if (block->kind() == Block::Kind::DIR && !block->may_have_conditional_branch()) {
    assert(block->orig_branch());
    *output_it++ = block->orig_branch().branch_dst();
  }
}

void Patcher::handle_bkpt(uint8_t *bkpt_addr) {
  Block *block = lookup_block_bkpt(bkpt_addr);
  if (block == nullptr) {
    printf("bkpt_addr: %p\n", bkpt_addr);
    /* dump block map */
    for (const auto& pair : block_map) {
      printf("%p -> %p\n", pair.first, pair.second->pool_addr());
    }
  }
  assert(block != nullptr);

  const auto lb = [&] (uint8_t *addr) -> uint8_t * {
    return lookup_block_patch(addr).pool_addr();
  };

  const auto pb = [&] (uint8_t *addr) {
    patch(addr);
  };

  const auto ss = [&] (void) {
    Instruction inst1(tracee.get_pc(), tracee);
    std::cout << inst1 << std::endl;
    
    tracee.singlestep();

    Instruction inst2(tracee.get_pc(), tracee);
    std::cout << inst2 << std::endl;
  };
  
  Block::HandleBkptIface hbi = {lb, pb, ss, tracee};
  
  block->handle_bkpt(bkpt_addr, hbi);

  // TODO: is there anything else that needs to be done here?
}

void Patcher::jump_to_block(uint8_t *orig_addr) {
  auto block_it = block_map.find(orig_addr);
  assert(block_it != block_map.end());
  block_it->second->jump_to();
}

Block *Patcher::lookup_block_bkpt(uint8_t *pool_addr) const {
  auto it = pool2block_map.upper_bound(pool_addr);
  if (it == pool2block_map.begin()) {
    return nullptr;
  } else {
    --it;
    if (it->second->pool_addr() > pool_addr) {
      return nullptr;
    } else {
      return it->second;
    }
  }
}

Block& Patcher::lookup_block_patch(uint8_t *addr) {
  assert(!is_pool_addr(addr));
  
  BlockMap::iterator it;
  while (true) {
    it = block_map.find(addr);
    if (it != block_map.end()) {
      break;
    }
    patch(addr);
  }

  return *it->second;
}

void Patcher::start(uint8_t *root) {
  patch(root);
  Block& block = lookup_block_patch(root);
  block.jump_to();
}

void Patcher::start(void) {
  start(tracee.get_pc());
}

bool Patcher::is_pool_addr(uint8_t *addr) const {
  return addr >= block_pool.begin() && addr < block_pool.end();
}
