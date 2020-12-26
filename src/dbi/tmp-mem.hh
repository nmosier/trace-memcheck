#pragma once

#include <type_traits>
#include "usermem.hh"
#include "tracee.hh"

namespace dbi {

  class TmpMem {
  public:
    TmpMem(Tracee& tracee, size_t size):
      mem(tracee, size, PROT_READ | PROT_WRITE), begin_(mem.begin<uint64_t>() + base_idx),
      rsp_ptr_(reinterpret_cast<uint64_t **>(mem.begin<uint64_t>())), rsp_val_(mem.end<uint64_t>()) {
      tracee.write(&rsp_val_, sizeof(rsp_val_), rsp_ptr_);
    }

    size_t size() const { return mem.size(); }
    uint64_t *begin() const { return mem.begin<uint64_t>() + 1; }
    uint64_t *end() const { return mem.end<uint64_t>(); }
    uint64_t **rsp() const { return rsp_ptr_; }

    template <typename Idx>
    uint64_t *operator[](Idx idx) const {
      static_assert(std::is_integral<Idx>(), "index must be of integral type");
      return begin() + idx;
    }

  private:
    static constexpr size_t base_idx = 1;
    UserMemory mem;
    uint64_t * const begin_;
    uint64_t ** const rsp_ptr_;
    uint64_t * const rsp_val_;
  };

}
