#pragma once

#include <vector>

namespace dbi {
  class Tracee;
  using Tracees = std::vector<Tracee>;
}

#include <iostream>
#include <array>
#include <unistd.h>
#include <sys/user.h>
#include <signal.h>
#include <string>
#include <map>
#include <sys/ptrace.h>
#include <sys/wait.h>

#include "inst.hh"
#include "syscall.hh"
#include "util.hh"

namespace dbi {

  class Tracee {
  public:
    Tracee(): fd_(-1) {}
    Tracee(pid_t pid, const char *command, bool stopped) { open(pid, command, stopped); }
    ~Tracee();
    Tracee(const Tracee& other) = delete;
    Tracee(Tracee&& other);
  
    bool good() const { return fd_ >= 0; }
    operator bool() const { return good(); }

    bool stopped() const { return stopped_; }
  
    void open(pid_t pid, const char *command, bool stopped);
    void close(void);
  
    pid_t pid() const { return pid_; }
    int fd() const { return fd_; }

    void read(void *to, size_t count, const void *from);
    void readv(const struct iovec *iov, int iovcnt, const void *from);
  
    bool try_read(void *to, size_t count, const void *from);

    template <typename OutputIt>
    void read(OutputIt begin, OutputIt end, const void *from) {
      read(&*begin, end - begin, from);
    }
  
    template <typename T, size_t N>
    void read(std::array<T,N>& to, const void *from) {
      read(to.begin(), to.end(), from);
    }

    void write(const void *from, size_t count, void *to);
    void writev(const struct iovec *iov, int iovcnt, void *to);
	      
    template <typename T, size_t N>
    void write(const std::array<T,N>& from, void *to) {
      write(from.data(), from.size() * sizeof(T), to);
    }

    template <typename T>
    void write_type(T val, T *addr) {
      write(&val, sizeof(val), addr);
    }

    template <typename T>
    T read_type(const T *addr) {
      T val;
      read(&val, sizeof(val), addr);
      return val;
    }
  
    void write(const Blob& inst);
	      
    void fill(uint8_t val, size_t count, void *to);
    void fill(uint8_t val, void *to_begin, void *to_end);

    size_t strlen(const char *addr);
    std::string string(const char *addr);

    std::ostream& dump(std::ostream& os, const void *ptr, size_t count);

    const user_regs_struct& get_gpregs();
    void get_gpregs(user_regs_struct& regs); 
    void set_gpregs(const user_regs_struct& regs);
  
    const user_fpregs_struct& get_fpregs();
    void get_fpregs(user_fpregs_struct& fpregs);
    void set_fpregs(const user_fpregs_struct& fpregs);

    void get_regs(user_regs_struct& gpregs) { get_gpregs(gpregs); }
    void get_regs(user_fpregs_struct& fpregs) { get_fpregs(fpregs); }
    void set_regs(const user_regs_struct& gpregs) { set_gpregs(gpregs); }
    void set_regs(const user_fpregs_struct& fpregs) { set_fpregs(fpregs); }
  
    uint8_t *get_pc(void);
    void set_pc(void *pc);
    void *get_sp(void);
    void set_sp(void *sp);
    void get_siginfo(siginfo_t& siginfo);
    siginfo_t get_siginfo();
    auto get_flags() { return get_gpregs().eflags; }
  
    void singlestep() { return resume<PTRACE_SINGLESTEP>(); }
    void cont() { return resume<PTRACE_CONT>(); }
    void cont_syscall() { return resume<PTRACE_SYSCALL>(); }

    void syscall(user_regs_struct& regs);

    // TODO: Replace uintptr with decltype of regs.rip, e.g.
    uintptr_t syscall(Syscall syscallno, uintptr_t a0 = 0, uintptr_t a1 = 0, uintptr_t a2 = 0,
		      uintptr_t a3 = 0, uintptr_t a4 = 0, uintptr_t a5 = 0);

    void gdb();

    std::pair<uintptr_t, std::string> addr_loc(void *addr) const;

    void disas(std::ostream& os, uint8_t *begin, uint8_t *end);

    std::ostream& cat_maps(std::ostream& os) const;

    const char *filename() const { return command; }

    void assert_stopsig(int status, int expect);

    std::ostream& xmm_print(std::ostream& os, unsigned idx);

    auto geteventmsg() {
      assert(stopped());
      unsigned long eventmsg;
      ptrace(PTRACE_GETEVENTMSG, 0, &eventmsg); // TODO: check return value
      return eventmsg;
    }

    void wait(int *status) {
      assert(!stopped());
      if (::waitpid(pid(), status, 0) < 0) {
	std::perror("waitpid");
	std::abort();
      }
      stopped_ = true;
    }

    int wait() {
      int status;
      wait(&status);
      return status;
    }

    void setoptions(int options) {
      ptrace(PTRACE_SETOPTIONS, 0, options);
    }

  private:
    pid_t pid_;
    int fd_;
    const char *command;
    bool stopped_ = false;
    bool regs_good_ = false;
    user_regs_struct regs_;
    bool fpregs_good_ = false;
    user_fpregs_struct fpregs_;

    void cache_regs();
    void cache_fpregs();
    void flush_caches();
    void invalidate_caches();
  
    /* Memory Cache */
    static constexpr size_t CACHE_PAGE_SIZE = PAGESIZE;
    struct Page {
      using Data = std::array<uint8_t, CACHE_PAGE_SIZE>;
      Data data;
      bool dirty;
    };
    using PageMap = std::map<const void *, Page>;
    PageMap memcache_;

    template <typename T>
    static constexpr const T *cache_pagealign(const T *ptr) {
      return reinterpret_cast<const T *>(util::align_down(reinterpret_cast<uintptr_t>(ptr),
							  CACHE_PAGE_SIZE));
    }

    template <typename T>
    static constexpr const T *cache_pagealign_up(const T *ptr) {
      return reinterpret_cast<const T *>(util::align_up(reinterpret_cast<uintptr_t>(ptr),
							CACHE_PAGE_SIZE));
    }

    Page& read_page(const void *pageaddr);

    Page& write_page(const void *pageaddr);
  
    void flush_memcache();
  
    size_t string(const char *addr, std::vector<char>& buf);

    template <__ptrace_request request>
    void resume() {
      assert(stopped());
      flush_caches();
      invalidate_caches();
      ptrace(request, 0, 0);
      stopped_ = false;
    }

    template <typename Addr, typename Data>
    long ptrace(enum __ptrace_request request, Addr addr, Data data) {
      long res;
      if ((res = ::ptrace(request, pid(), addr, data)) < 0) {
	std::perror("ptrace");
	std::abort();
      }
      return res;
    }
    
  };

}
