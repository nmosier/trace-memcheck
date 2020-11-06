#pragma once

#include <vector>

extern "C" {
#include <xed/xed-interface.h>
}

class Block {
public:
  using InstVec = std::vector<xed_decoded_inst_t>;
  
  Block(void *addr);
  
  const InstVec& instructions() const { return insts; }
  InstVec& instructions() { return insts; }
  
  void *addr() const { return addr_; }

private:
  void *addr_;
  InstVec insts;
};
