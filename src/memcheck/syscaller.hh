#pragma once

#include "dbi/syscall.hh"
#include "dbi/tracee.hh"
#include "dbi/status.hh"

namespace memcheck {

  class Syscaller {
  public:
    Syscaller() {}
    template <typename... Args>
    Syscaller(Args&&... args) { open(std::forward<Args>(args)...); }

    bool good() const { return syscall_ptr != nullptr; }
    void open(void *syscall_ptr) { this->syscall_ptr = syscall_ptr; }
    void close() { assert(good()); syscall_ptr = nullptr; }
    
    template <typename Ret, typename... Args>
    Ret syscall(dbi::Tracee& tracee, dbi::Syscall no, Args&&... args) const {
      return tracee.syscall<Ret>(syscall_ptr, no, std::forward<Args>(args)...);
    }

    pid_t fork(dbi::Tracee& tracee, dbi::Status& status, dbi::Tracee& forked_tracee) const {
      return tracee.fork(status, forked_tracee, syscall_ptr);
    }
    
  private:
    void *syscall_ptr = nullptr;
  };

}
