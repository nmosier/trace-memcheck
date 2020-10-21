#pragma once

#include "decoder.hh"

class BranchPatcher {
public:
  BranchPatcher() {}
  BranchPatcher(int fd): decoder(fd) {}

  void patch(void *root) const;
  
private:
  Decoder decoder;
};
