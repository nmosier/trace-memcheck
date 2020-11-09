#include <cassert>
#include <algorithm>
#include "block.hh"

size_t Block::size() const {
  return std::accumulate(insts.begin(), insts.end(), 0,
			 [] (size_t acc, const Instruction& inst) {
			   return acc + inst.size();
    });
}

Block Block::block_at(void *newaddr) const {
  assert(contains(newaddr));

  const char *ptr = (char *) addr();
  for (auto it = instructions().begin(); it != instructions().end(); ++it) {
    if (ptr == newaddr) {
      return Block(newaddr, it, instructions().end());
    }
    ptr += it->size();
  }

  abort(); // impossible
}

bool Block::contains(void *ptr_) const {
  char *ptr = (char *) ptr_;
  char *base = (char *) addr();
  return ptr >= base && ptr < base + size();
}

uint8_t *BlockPool::alloc(size_t size) {
  assert(alloc_ptr + size <= mem.end<uint8_t>());
  uint8_t *ptr = alloc_ptr;
  alloc_ptr += size;
  return ptr;
}

uint8_t *BlockPool::add_block(const Block& block) {
  return add_block(block.instructions().begin(), block.instructions().end());
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
