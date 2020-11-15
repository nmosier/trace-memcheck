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
  /* create block */
  const auto block_it =
    block_map.emplace(start_pc, Block::Create(start_pc, tracee, block_pool));
  assert(block_it.second);
  const Block *block = block_it.first->second;

  /* add todo blocks */
  if (block->kind() == Block::Kind::DIR) {
    *output_it++ = block->orig_branch().branch_dst();
  }
}

void Patcher::handle_bkpt(uint8_t *bkpt_addr) {
  Block *block = lookup_block(bkpt_addr);
  assert(block != nullptr);

  Block::LookupBlock lb = [&] (uint8_t *addr) -> uint8_t * {
    BlockMap::iterator it;
    while (true) {
      it = block_map.find(addr);
      if (it != block_map.end()) {
	break;
      }
      patch(addr);
    }
    return it->second->pool_addr();
  };

  Block::PatchBlock pb = [&] (uint8_t *addr) {
    patch(addr);
  };

  Block::SingleStep ss = [&] (void) {
    tracee.singlestep();
  };
  
  Block::HandleBkptIface hbi = {lb, pb, ss};
  
  block->handle_bkpt(hbi);
		     
  
  // TODO
  abort();
}

void Patcher::jump_to_block(uint8_t *orig_addr) {
  auto block_it = block_map.find(orig_addr);
  assert(block_it != block_map.end());
  block_it->second->jump_to();
}

Block *Patcher::lookup_block(uint8_t *addr) const {
  auto it = block_map.upper_bound(addr);
  if (it == block_map.begin()) {
    return nullptr;
  } else {
    --it;
    return it->second;
  }
}
