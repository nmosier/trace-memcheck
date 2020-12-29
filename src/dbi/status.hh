#pragma once

#include <sys/ptrace.h>
#include <sys/wait.h>
#include <cassert>
#include <iostream>

namespace dbi {

  using status_t = int;
  
  // wrapper for status, as returned by wait(2)/waitpid(2)
  class Status {
  public:
    Status() {}
    Status(status_t status): status_(status) {}

    auto status() const { return status_; }
    auto& status() { return status_; }

    bool stopped() const { return WIFSTOPPED(status_); }
    int stopsig() const {
      assert(stopped());
      return WSTOPSIG(status_);
    }
    bool stopped_trap() const { return stopped() && stopsig() == SIGTRAP; }
    enum __ptrace_eventcodes ptrace_event() const {
      assert(stopsig() == SIGTRAP);
      const auto res = ((status_ >> 8) & ~SIGTRAP) >> 8;
      assert(res >= 0 && res < 8);
      return static_cast<enum __ptrace_eventcodes>(res);
    }
    
    bool signaled() const { return WIFSIGNALED(status_); }
    int termsig() const {
      assert(signaled());
      return WTERMSIG(status_);
    }
    
    bool exited() const { return WIFEXITED(status_); }
    int exitstatus() const {
      assert(exited());
      return WEXITSTATUS(status_);
    }

  private:
    status_t status_;
  };

  const char *to_string(enum __ptrace_eventcodes event);
  std::ostream& operator<<(std::ostream& os, enum __ptrace_eventcodes event);
  
}
