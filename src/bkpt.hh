#pragma once

#include <cstdint>
#include <cstring>
#include <sys/types.h>
#include "usermem.hh"

class BkptPool {
public:
  BkptPool(const Tracee& tracee, size_t size): mem(tracee, size), next(mem.begin<uint8_t>()) {}

  user_ptr_t<uint8_t> alloc();
  void free(user_ptr_t<uint8_t> user_ptr) {}
  
private:
  UserMemory mem;
  user_ptr_t<uint8_t> next;
};
