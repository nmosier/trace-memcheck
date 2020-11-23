#include <unordered_set>
#include "patch.hh"

Patcher::Patcher(Tracee& tracee):
  tracee(tracee), block_pool(tracee, block_pool_size), ptr_pool(tracee, ptr_pool_size) {}

void Patcher::patch(uint8_t *start_pc) {
  const auto lb = [&] (uint8_t *addr) -> uint8_t * {
    return lookup_block_patch(addr).pool_addr();
  }; // TODO: unify this with other def of lb

  const auto rb = [&] (uint8_t *addr, const BkptCallback& callback) {
    const auto res = bkpt_map.emplace(addr, callback);
    assert(res.second);
  };

  /* create block */
  Block *block = Block::Create(start_pc, tracee, block_pool, ptr_pool, lb, rb);
  const auto block_it = block_map.emplace(start_pc, block);
  assert(block_it.second);
}

void Patcher::handle_bkpt(uint8_t *bkpt_addr) {
  const auto lb = [&] (uint8_t *addr) -> uint8_t * {
    return lookup_block_patch(addr).pool_addr();
  };

  const BkptCallback& callback = lookup_bkpt(bkpt_addr);
  callback(bkpt_addr, lb);
}

void Patcher::jump_to_block(uint8_t *orig_addr) {
  auto block_it = block_map.find(orig_addr);
  assert(block_it != block_map.end());
  block_it->second->jump_to();
}

const Patcher::BkptCallback& Patcher::lookup_bkpt(uint8_t *addr) const {
  return bkpt_map.at(addr);
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
