#pragma once

class ReturnStackBuffer;

#include "usermem.hh"
#include "tracee.hh"

class ReturnStackBuffer {
public:
  ReturnStackBuffer(Tracee& tracee, size_t size);

  uint8_t **begin() const { return begin_; }
  uint8_t **ptr() const { return ptr_; }
  uint8_t **end() const { return end_; }
  
private:
  UserMemory mem;
  uint8_t **begin_;
  uint8_t **ptr_;
  uint8_t **end_;
};
