#pragma once

#include "usermem.hh"
#include "tracee.hh"

class MemcheckVariables {
public:
  MemcheckVariables(Tracee& tracee):
    mem(tracee, PAGESIZE, PROT_READ | PROT_WRITE),
    allocator(mem),
    fill_(reinterpret_cast<uint8_t *>(allocator.alloc())),
    jcc_cksum_(reinterpret_cast<uint32_t *>(allocator.alloc()))
  {}

  uint8_t *fill() const { return fill_; }
  uint32_t *jcc_cksum() const { return jcc_cksum_; }
  
private:
  UserMemory mem;
  UserAllocator<uint64_t> allocator;

  /* Variables */
  uint8_t *fill_; // so tracee knows what to fill with
  uint32_t *jcc_cksum_; // conditional branch flags checksum
};
