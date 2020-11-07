#include <cassert>
#include <algorithm>
#include "block.hh"

size_t Block::size() const {
  return std::accumulate(insts.begin(), insts.end(), 0,
			 [] (size_t acc, const xed_decoded_inst_t& inst) {
			   return acc + xed_decoded_inst_get_length(&inst);
    });
}

Block Block::block_at(void *newaddr) const {
  assert(contains(newaddr));

  const char *ptr = (char *) addr();
  for (auto it = instructions().begin(); it != instructions().end(); ++it) {
    if (ptr == newaddr) {
      return Block(newaddr, it, instructions().end());
    }
    ptr += xed_decoded_inst_get_length(&*it);
  }

  abort(); // impossible
}

bool Block::contains(void *ptr_) const {
  char *ptr = (char *) ptr_;
  char *base = (char *) addr();
  return ptr >= base && ptr < base + size();
}
