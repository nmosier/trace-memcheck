#include "vars.hh"

namespace memcheck {

  void MemcheckVariables::open(Tracee& tracee, const Patcher& patcher, fill_ptr_t fill_src) {
    assert(!*this);

    fill_src_ = fill_src;
    this->tracee = &tracee;
    mem.open(tracee, PAGESIZE, PROT_READ | PROT_WRITE);
    allocator.open(mem);
    fill_ptr_ = reinterpret_cast<uint8_t *>(allocator.alloc());
    jcc_cksum_ptr_ = reinterpret_cast<uint32_t *>(allocator.alloc());
    tmp_rsp_ptr_ = patcher.tmp_rsp();
    prev_sp_ptr_ = reinterpret_cast<uint64_t **>(allocator.alloc());
  }

  void MemcheckVariables::init_for_subround() {
    write_type(*fill_src_, fill_ptr_);
    write_type(0U, jcc_cksum_ptr_);
  }

}
