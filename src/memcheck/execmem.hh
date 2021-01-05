#pragma once

#include "dbi/usermem.hh"
#include "dbi/util.hh"

namespace memcheck {

  class ExecMemory {
  public:
    ExecMemory() {}

    template<typename... Args>
    ExecMemory(Args&&... args) { open(std::forward<Args>(args)...); }

    void open(dbi::Tracee& tracee) {
      mem.open(tracee, dbi::PAGESIZE, PROT_READ | PROT_EXEC);

      const std::array<uint8_t, 3> syscall = {0x0f, 0x05, 0x90};
      tracee.write(syscall, syscall_ptr());
    }

    void *syscall_ptr() const { return mem.base<uint8_t>(); }

  private:
    dbi::UserMemory mem;
  };
  
}
