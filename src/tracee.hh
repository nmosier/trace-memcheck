#pragma once

#include <iostream>
#include <unistd.h>
#include <sys/user.h>

class Tracee {
public:
  Tracee(void) {}
  Tracee(pid_t pid);
  ~Tracee(void);
  
  pid_t pid() const { return pid_; }
  int fd() const { return fd_; }

  void read(void *to, size_t count, const void *from) const;
  void write(const void *from, size_t count, void *to) const;
  void dump(std::ostream& os, const void *ptr, size_t count) const;

  void get_regs(user_regs_struct& regs) const;
  user_regs_struct get_regs(void) const;
  void set_regs(const user_regs_struct& regs) const;
  
  void *get_pc(void) const;
  void set_pc(void *pc) const;
  void *get_sp(void) const;

  int singlestep(void) const; // returns status from wait(2)

  void syscall(user_regs_struct& regs) const;

  // TODO: Replace uintptr with decltype of regs.rip, e.g.
  uintptr_t syscall(uintptr_t syscallno, uintptr_t a0 = 0, uintptr_t a1 = 0, uintptr_t a2 = 0,
		    uintptr_t a3 = 0, uintptr_t a4 = 0, uintptr_t a5 = 0) const;

  void perror(void) const;
  
private:
  pid_t pid_;
  int    fd_;
};
