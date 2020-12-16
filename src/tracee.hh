#pragma once

class Tracee;

#include <iostream>
#include <array>
#include <unistd.h>
#include <sys/user.h>
#include <signal.h>
#include <string>

#include "inst.hh"
#include "syscall.hh"

class Tracee {
public:
  Tracee(void): fd_(-1) {}
  Tracee(pid_t pid, const char *command) { open(pid, command); }
  ~Tracee(void);

  void open(pid_t pid, const char *command);
  void close(void);
  
  pid_t pid() const { return pid_; }
  int fd() const { return fd_; }

  void read(void *to, size_t count, const void *from);

  template <typename OutputIt>
  void read(OutputIt begin, OutputIt end, const void *from) {
    read(&*begin, end - begin, from);
  }
  
  template <typename T, size_t N>
  void read(std::array<T,N>& to, const void *from) {
    read(to.begin(), to.end(), from);
  }

  void write(const void *from, size_t count, void *to) const;

  template <typename T, size_t N>
  void write(const std::array<T,N>& from, void *to) {
    write(from.data(), from.size() * sizeof(T), to);
  }
  
  void write(const Blob& inst) const;

  void fill(uint8_t val, size_t count, void *to) const;
  void fill(uint8_t val, void *to_begin, void *to_end) const;

  size_t strlen(const char *addr);
  std::string string(const char *addr);

  std::ostream& dump(std::ostream& os, const void *ptr, size_t count);

  const user_regs_struct& get_regs(void);
  void get_regs(user_regs_struct& regs);
  void set_regs(const user_regs_struct& regs);

  const user_fpregs_struct& get_fpregs();
  void get_fpregs(user_fpregs_struct& fpregs);
  void set_fpregs(const user_fpregs_struct& fpregs);
  
  uint8_t *get_pc(void);
  void set_pc(void *pc);
  void *get_sp(void);
  void set_sp(void *sp);
  void get_siginfo(siginfo_t& siginfo);
  siginfo_t get_siginfo();
  auto get_flags() { return get_regs().eflags; }
  
  int singlestep(void);
  int cont(void);

  void syscall(user_regs_struct& regs);

  // TODO: Replace uintptr with decltype of regs.rip, e.g.
  uintptr_t syscall(Syscall syscallno, uintptr_t a0 = 0, uintptr_t a1 = 0, uintptr_t a2 = 0,
		    uintptr_t a3 = 0, uintptr_t a4 = 0, uintptr_t a5 = 0);

  void perror(void) const;

  void gdb(void);

  std::pair<uintptr_t, std::string> addr_loc(void *addr) const;

  void disas(std::ostream& os, uint8_t *begin, uint8_t *end);

  std::ostream& cat_maps(std::ostream& os) const;

  const char *filename() const { return command; }

  void assert_stopsig(int status, int expect);

  std::ostream& xmm_print(std::ostream& os, unsigned idx);
  
private:
  pid_t pid_;
  int fd_;
  const char *command;
  bool regs_good_ = false;
  user_regs_struct regs_;
  bool fpregs_good_ = false;
  user_fpregs_struct fpregs_;

  void cache_regs();
  void cache_fpregs();
  void invalidate_caches();

  size_t string(const char *addr, std::vector<char>& buf);
};
