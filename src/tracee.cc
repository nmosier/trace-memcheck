#include <new>
#include <stdexcept>
#include <vector>
#include <cstring>
#include <cstdio>
#include <fcntl.h>
#include <cstdlib>
#include <cassert>
#include <sys/user.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include "tracee.hh"
#include "util.hh"

Tracee::Tracee(pid_t pid_): pid_(pid_) {
  char *path;
  if (asprintf(&path, "/proc/%d/mem", pid_) < 0) {
    std::perror("asprintf");
    throw std::bad_alloc();
  }

  fd_ = open(path, O_RDWR);

  free(path);

  if (fd_ < 0) {
    std::perror("open");
    throw std::invalid_argument(strerror(errno));
  }
}

Tracee::~Tracee(void) {
  if (close(fd_) < 0) {
    std::perror("close");
    throw std::invalid_argument(strerror(errno));
  }
}

void Tracee::read(void *to, size_t count, const void *from) const {
  const ssize_t bytes_read = pread(fd(), to, count, (off_t) from);
  assert(bytes_read == count);
}

void Tracee::write(const void *from, size_t count, void *to) const {
  const ssize_t bytes_written = pwrite(fd(), from, count, (off_t) to);
  assert(bytes_written == count);
}

void Tracee::dump(std::ostream& os, const void *ptr, size_t count) const {
  std::vector<uint8_t> data(count);
  read(data.data(), count, ptr);
  for (const uint8_t b : data) {
    char s[4];
    sprintf(s, "%02hhx ", b);
    os << s;
  }
}

void Tracee::get_regs(user_regs_struct& regs) const {
  ptrace(PTRACE_GETREGS, pid(), nullptr, &regs);
}

user_regs_struct Tracee::get_regs(void) const {
  user_regs_struct regs;
  get_regs(regs);
  return regs;
}

void Tracee::set_regs(const user_regs_struct& regs) const {
  ptrace(PTRACE_SETREGS, pid(), nullptr, &regs);
}

void *Tracee::get_sp(void) const {
  return (void *) get_regs().rsp;
}

void *Tracee::get_pc(void) const {
  return (void *) get_regs().rip;
}

void Tracee::set_pc(void *pc) const {
  auto regs = get_regs();
  regs.rip = (uintptr_t) pc;
  set_regs(regs);
}

int Tracee::singlestep(void) const {
  ptrace(PTRACE_SINGLESTEP, pid(), nullptr, nullptr);
  int status;
  wait(&status);
  return status;
}

void Tracee::syscall(user_regs_struct& regs) const {
  const user_regs_struct saved_regs = get_regs();
  set_regs(regs);
  void *pc = (void *) regs.rip;
  const uint8_t syscall[] = {0x0f, 0x05};
  uint8_t saved_code[arrlen(syscall)];

  read(&saved_code, sizeof(saved_code), pc);
  write(&syscall, sizeof(syscall), pc);

  const int status = singlestep();
  assert(WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP);

  write(&saved_code, sizeof(saved_code), pc);
  get_regs(regs);
  set_regs(saved_regs);
}

uintptr_t Tracee::syscall(uintptr_t syscallno, uintptr_t a0, uintptr_t a1, uintptr_t a2,
			  uintptr_t a3, uintptr_t a4, uintptr_t a5) const {
  user_regs_struct regs = get_regs();
  regs.rax = syscallno;
  regs.rdi = a0;
  regs.rsi = a1;
  regs.rdx = a2;
  regs.r10 = a3;
  regs.r8  = a4;
  regs.r9  = a5;
  
  syscall(regs);

  return regs.rax;
}

void Tracee::perror(void) const {
  // TODO: need to call dlsym()
  abort();
}
