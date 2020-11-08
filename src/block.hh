#pragma once

class Block;

#include <vector>
#include <cstddef>
#include <cassert>

extern "C" {
#include <xed/xed-interface.h>
}

#include "tracee.hh"
#include "usermem.hh"
#include "inst.hh"

class Block {
public:
  using InstVec = std::vector<Instruction>;

  Block() {}
  Block(void *addr): addr_(addr) {}

  template <typename... Args>
  Block(void *addr, Args&&... args): addr_(addr), insts(args...) {}

  const InstVec& instructions() const { return insts; }
  InstVec& instructions() { return insts; }

  void *addr() const { return addr_; }
  size_t size() const;
  bool contains(void *ptr) const;

  Block block_at(void *addr) const;

private:
  void *addr_;
  InstVec insts;
};

class BlockPool {
public:
  BlockPool(const Tracee& tracee, size_t size):
    tracee(tracee), mem(tracee, size), alloc_ptr(mem.begin<uint8_t>()) {}

  template <typename It>
  void add_block(It begin, It end) {
    for (auto it = begin; it != end; ++it) {
      Instruction inst = *it;
      tracee.write(inst.data().begin(), inst.data().begin() + inst.size(), alloc(inst.size()));
      // TODO
      assert(false);
    }
  }
  
private:
  const Tracee& tracee;
  UserMemory mem;
  uint8_t *alloc_ptr;

  uint8_t *alloc(size_t size);
};
