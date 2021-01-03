#include "vars.hh"

namespace memcheck {

  void MemcheckVariables::open(dbi::Tracee& tracee, const dbi::Patcher& patcher,
			       const ThreadMap& thd_map) {
    assert(!*this);

    thd_map_ = &thd_map;
    mem.open(tracee, dbi::PAGESIZE, PROT_READ | PROT_WRITE);
    allocator.open(mem);
    fill_ptr_ = reinterpret_cast<uint8_t *>(allocator.alloc());
    jcc_cksum_ptr_ = reinterpret_cast<uint32_t *>(allocator.alloc());
    tmp_rsp_ptr_ = patcher.tmp_rsp();
    prev_sp_ptr_ = reinterpret_cast<uint64_t **>(allocator.alloc());
  }

  void MemcheckVariables::init_for_subround(dbi::Tracee& tracee) {
    write_type(tracee, thd_map_->at(tracee.pid()).fill, fill_ptr_);
    write_type(tracee, 0U, jcc_cksum_ptr_);
  }

}
