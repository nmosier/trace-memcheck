#include "memcheck-vars.hh"

void MemcheckVariables::open(Tracee& tracee, const Patcher& patcher) {
  assert(!*this);

  this->tracee = &tracee;
  mem.open(tracee, PAGESIZE, PROT_READ | PROT_WRITE);
  allocator.open(mem);
  fill_ptr_ = reinterpret_cast<uint8_t *>(allocator.alloc());
  jcc_cksum_ptr_ = reinterpret_cast<uint32_t *>(allocator.alloc());
  tmp_rsp_ptr_ = patcher.tmp_rsp();
  prev_sp_ptr_ = reinterpret_cast<uint64_t **>(allocator.alloc());
}

void MemcheckVariables::init_for_subround(uint8_t fill) {
  write_type(fill, fill_ptr_);
  write_type(0U, jcc_cksum_ptr_);
}

