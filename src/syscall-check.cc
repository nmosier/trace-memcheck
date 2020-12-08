#include <unordered_map>
#include "syscall-check.hh"

bool SyscallChecker::run(const SyscallArgs& args) {
  switch (args.no()) {
  case Syscall::READ: return run_read(args);
  case Syscall::WRITE: return run_write(args);
  default:
    return true;
    abort();
  }
}

bool SyscallChecker::run_read(const SyscallArgs& args) {
  Params<int, unsigned int, char *, size_t> params(args);
  const auto fd = params.arg<0>(); (void) fd;
  const auto buf = params.arg<1>();
  const auto count = params.arg<2>();

  /* TODO: Make sure that this is valid memory (e.g. not pointing past end of heap). */

  /* make sure not below SP */
  if (stack_range.overlaps(AddrRange(buf, count))) {
    std::clog << "memcheck: read from below stack pointer\n";
    return false;
  }
  
  /* untaint written-to memory */
  taint_state.fill(buf, buf + count, 0);
  
  return true;
}

bool SyscallChecker::run_write(const SyscallArgs& args) {
  Params<int, unsigned int, const char *, size_t> params(args);
  const auto fd = params.arg<0>(); (void) fd;
  const auto buf = params.arg<1>();
  const auto count = params.arg<2>();

  /* TODO: Make sure that this is valid memory (e.g. not pointing past end of heap). */

  if (!taint_state.is_zero(buf, buf + count)) {
    std::clog << "memcheck: write from uninitialized memory\n";
    return false;
  }
  
  return true;
}

