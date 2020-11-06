#pragma once

#include <vector>
#include <cstddef>

extern "C" {
#include <xed/xed-interface.h>
}

class Block {
public:
  using InstVec = std::vector<xed_decoded_inst_t>;

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
