#pragma once

#include "dbi/usermem.hh"
#include "dbi/tracee.hh"
#include "dbi/util.hh"
#include "dbi/patch.hh"
#include "types.hh"

namespace memcheck {

  class MemcheckVariables {
  public:
    MemcheckVariables() {}

    template <typename... Args>
    MemcheckVariables(Args&&... args) { open(args...); }

    bool good() const { return mem; }
    operator bool() const { return good(); }

    void open(dbi::Tracee& tracee, const dbi::Patcher& patcher, fill_ptr_t fill_src);

    uint8_t * const * fill_ptr_ptr() const { return &fill_ptr_; }
    uint8_t fill_val() { return read_type(fill_ptr_); }
  
    uint32_t * const * jcc_cksum_ptr_ptr() const { return &jcc_cksum_ptr_; }
    uint32_t jcc_cksum_val() { return read_type(jcc_cksum_ptr_); }

    uint64_t ** const * tmp_rsp_ptr_ptr() const { return &tmp_rsp_ptr_; }
    uint64_t *tmp_rsp_val() { return read_type(tmp_rsp_ptr_); }

    uint64_t ** const * prev_sp_ptr_ptr() const { return &prev_sp_ptr_; }
    uint64_t *prev_sp_val() { return read_type(prev_sp_ptr_); }

    // call when each subround start
    void init_for_subround();
  
  private:
    dbi::Tracee *tracee = nullptr;
    dbi::UserMemory mem;
    dbi::UserAllocator<uint64_t> allocator;

    fill_ptr_t fill_src_;
    uint8_t *fill_ptr_; // so tracee knows what to fill with
    uint32_t *jcc_cksum_ptr_; // conditional branch flags checksum
    uint64_t **tmp_rsp_ptr_; // tmp rsp
    uint64_t **prev_sp_ptr_;

    template <typename T> void write_type(T val, T *addr) { tracee->write_type(val, addr); }
    template <typename T> T read_type(const T *addr) { return tracee->read_type(addr); }
  };

}
