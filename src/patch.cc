#include <unordered_set>
#include "patch.hh"

Patcher::Patcher(Tracee& tracee, const Transformer& transformer):
  tracee(tracee), block_pool(tracee, block_pool_size), ptr_pool(tracee, ptr_pool_size),
  rsb(tracee, rsb_size), tmp_mem(tracee, tmp_size), transformer(transformer) {}

bool Patcher::patch(uint8_t *start_pc) {
  const auto lb = [&] (uint8_t *addr) -> uint8_t * {
    const auto res = lookup_block_patch(addr, true);
    if (res == nullptr) { return nullptr; }
    return res->pool_addr();
  };

  const auto pb = [&] (uint8_t *addr) -> uint8_t * {
    const auto it = block_map.find(addr);
    if (it == block_map.end()) {
      return nullptr;
    } else {
      return it->second->pool_addr();
    }
  };

  const auto rb = [&] (uint8_t *addr, const BkptCallback& callback) {
    const auto res = bkpt_map.emplace(addr, callback);
    assert(res.second); (void) res;
  };

  const auto ib = [&] (uint8_t *addr, Block *block) {
    const auto it = block_map.emplace(addr, block);
    assert(it.second); (void) it;
  };

  /* create block */
  return Block::Create(start_pc, tracee, block_pool, ptr_pool, tmp_mem, lb, pb, rb, rsb, ib,
		       transformer);
}

void Patcher::handle_bkpt(uint8_t *bkpt_addr) {
  const BkptCallback& callback = lookup_bkpt(bkpt_addr);
  callback(bkpt_addr);
}

void Patcher::jump_to_block(uint8_t *orig_addr) {
  auto block_it = block_map.find(orig_addr);
  assert(block_it != block_map.end());
  block_it->second->jump_to();
}

const Patcher::BkptCallback& Patcher::lookup_bkpt(uint8_t *addr) const {
  return bkpt_map.at(addr);
}

Block *Patcher::lookup_block_patch(uint8_t *addr, bool can_fail) {
  assert(!is_pool_addr(addr));
  
  BlockMap::iterator it;
  while (true) {
    it = block_map.find(addr);
    if (it != block_map.end()) {
      break;
    }
    if (!patch(addr)) {
      if (can_fail) {
	return nullptr;
      } else {
	std::clog << "failed to translate block" << std::endl;
	abort();
      }
    }
  }
  
  return it->second;
}

void Patcher::start(uint8_t *root) {
  const bool patched = patch(root);
  assert(patched); (void) patched;
  Block& block = *lookup_block_patch(root, false); // cannot fail
  block.jump_to();
}

void Patcher::start(void) {
  start(tracee.get_pc());
}

bool Patcher::is_pool_addr(uint8_t *addr) const {
  return addr >= block_pool.begin() && addr < block_pool.end();
}
