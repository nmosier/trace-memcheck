#pragma once

class Encoder;

#include "tracee.hh"

class Encoder {
public:
  Encoder(Tracee& tracee): tracee(tracee) {}
  
  void RELBRd(uint8_t *pc, uint8_t *dst);
  
private:
  std::function<void (uint8_t *, uint8_t *, size_t count)>; 
};
