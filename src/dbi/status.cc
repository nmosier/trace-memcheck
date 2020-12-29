#include "status.hh"

namespace dbi {

  const char *to_string(enum __ptrace_eventcodes event) {
    switch (event) {
    case 0: return "(none)";
    case PTRACE_EVENT_FORK: return "FORK";
    case PTRACE_EVENT_VFORK: return "VFORK";
    case PTRACE_EVENT_CLONE: return "CLONE";
    case PTRACE_EVENT_EXEC: return "EXEC";
    case PTRACE_EVENT_VFORK_DONE: return "VFORK_DONE";
    case PTRACE_EVENT_EXIT: return "EXIT";
    case PTRACE_EVENT_SECCOMP: return "SECCOMP";
    default: return "(invalid)";
    }
  }
  
  std::ostream& operator<<(std::ostream& os, enum __ptrace_eventcodes event) {
    return os << to_string(event);
  }
  
}
