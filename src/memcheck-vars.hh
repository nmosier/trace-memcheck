#pragma once

#include "usermem.hh"
#include "tracee.hh"
#include "util.hh"

class MemcheckVariables {
public:
  MemcheckVariables(Tracee& tracee):
    tracee(tracee),
    mem(tracee, PAGESIZE, PROT_READ | PROT_WRITE),
    allocator(mem),
    fill_ptr_(reinterpret_cast<uint8_t *>(allocator.alloc())),
    jcc_cksum_ptr_(reinterpret_cast<uint32_t *>(allocator.alloc()))
  {}

  uint8_t *fill_ptr() const { return fill_ptr_; }
  uint8_t fill_val() { return read_type(fill_ptr()); }
  
  uint32_t *jcc_cksum_ptr() const { return jcc_cksum_ptr_; }
  uint32_t jcc_cksum_val() { return read_type(jcc_cksum_ptr()); }

  // call when each subround start
  void init_for_subround(uint8_t fill);
  
private:
  Tracee& tracee;
  UserMemory mem;
  UserAllocator<uint64_t> allocator;

  /* Variables */
  uint8_t *fill_ptr_; // so tracee knows what to fill with
  uint32_t *jcc_cksum_ptr_; // conditional branch flags checksum

  template <typename T> void write_type(T val, T *addr) { tracee.write_type(val, addr); }
  template <typename T> T read_type(const T *addr) { return tracee.read_type(addr); }
};
