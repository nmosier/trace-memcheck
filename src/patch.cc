#include <unordered_set>
#include "patch.hh"

Patcher::Patcher(Tracee& tracee): tracee(tracee), block_pool(tracee, block_pool_size) {}

void Patcher::patch(uint8_t *root) {
  std::vector<uint8_t *> todo = {root};
  std::unordered_set<uint8_t *> done;
  while (!todo.empty()) {
    uint8_t *pc = todo.back();
    todo.pop_back();
    if (done.find(pc) == done.end()) {
      patch_one(pc, std::back_inserter(todo));
      done.insert(pc);
    }
  }
}

template <typename OutputIt>
void Patcher::patch_one(uint8_t *start_pc, OutputIt output_it) {
  /* create block */
  const auto block_it =
    block_map.emplace(start_pc, Block::Create(start_pc, tracee, block_pool, nullptr));
  assert(block_it.second);
  const Block& block = block_it.first->second;

  /* add todo blocks */
  if (block.kind() == Block::Kind::DIR) {
    *output_it++ = block.insts().back().branch_dst();
  }
}
