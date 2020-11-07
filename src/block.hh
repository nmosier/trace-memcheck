#pragma once

class Block;

#include <vector>
#include <cstddef>

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
  BlockPool(const Tracee& tracee, size_t size): mem(tracee, size) {}

  template <typename It>
  void add_block(It begin, It end) {
    for (auto it = begin; it != end; ++it) {
      // TODO
    }
  }
  
private:
  UserMemory mem;
};
