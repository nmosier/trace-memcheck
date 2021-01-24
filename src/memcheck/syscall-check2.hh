#pragma once

#include <sys/uio.h>
#include <vector>
#include <string>

#include "dbi/tracee.hh"
#include "memcheck.hh"
#include "addr-range.hh"

namespace memcheck {

  class IOTransaction {
  public:
    IOTransaction(dbi::Tracee& tracee1, dbi::Tracee& tracee2):
      tracee1(tracee1), tracee2(tracee2), bytes(0) {}

    void add_buf(void *to, const void *from, size_t size, const char *desc);

    void add_buf(const void *from, size_t size, const char *desc) {
      add_buf(nullptr, from, size, desc);
    }

    template <typename T>
    void add_buf(T *to, const T *from, size_t count, const char *desc) {
      add_buf(static_cast<void *>(to), static_cast<const void *>(from), sizeof(T) * count, desc);
    }

    template <typename T>
    void add_buf(const T *from, size_t count, const char *desc) {
      add_buf(nullptr, from, count, desc);
    }

    template <typename Container>
    void add_buf(Container& container, const typename Container::value_type *from,
		 const char *desc) {
      add_buf(container.data(), from, container.size(), desc);
    }

    template <typename T>
    void add_type(T& to, const T *from, const char *desc) {
      add_buf(&to, from, 1, desc);
    }

    template <typename T>
    void add_type(const T *from, const char *desc) {
      add_buf(nullptr, from, 1, desc);
    }

    void add_string(const char *from, const char *desc);

    template <typename Func>
    bool transfer(Func error);

    void clear() { from.clear(); info.clear(); bytes = 0; }
    
  private:
    using IOVec = std::vector<struct iovec>;
    struct Entry {
      using Buf = std::vector<char>;
      void *to;
      Buf buf1;
      Buf buf2;
      const char *desc;
      
      Entry(void *to, size_t size, const char *desc):
	to(to), buf1(size), buf2(size), desc(desc) {}

      size_t size() const { return buf1.size(); }

      template <typename Func>
      bool transfer(Func error);
    };

    dbi::Tracee& tracee1;
    dbi::Tracee& tracee2;
    IOVec from;
    std::vector<Entry> info;
    size_t bytes;

    size_t size() const { return info.size(); }
    bool empty() const { return size() == 0; }
  };

  /* transfer from one process to another */
  class IOTransfer {
  public:
    IOTransfer(dbi::Tracee& tracee1, dbi::Tracee& tracee2): tracee1(tracee1), tracee2(tracee2) {}
    
    void add_buf(void *remote, size_t size, void *local = nullptr);

    template <typename T>
    void add_buf(T *remote, size_t count, T *local = nullptr) {
      add_buf(static_cast<void *>(remote), count * sizeof(T), local);
    }

    template <typename Container>
    void add_buf(typename Container::value_type *remote, Container& container) {
      add_buf(remote, container.size(), container.data());
    }

    template <typename T>
    void add_type(T *remote) { add_buf(remote, 1); }

    template <typename T>
    void add_type(T *remote, T& local) { add_buf(remote, 1, &local); }

    void add_str(char *s);

    void transfer() const;
    void clear() {
      remote.clear();
      local.clear();
      bufs.clear();
      bytes = 0;
    }
    
  private:
    using IOVec = std::vector<struct iovec>;
    dbi::Tracee& tracee1;
    dbi::Tracee& tracee2;
    IOVec remote;
    IOVec local;
    std::vector<std::vector<char>> bufs;
    size_t bytes = 0;
  };

  class SyscallChecker2 {
  public:
    SyscallChecker2(dbi::Tracee& tracee1, dbi::Tracee& tracee2, PageSet& page_set,
		    void *stack_begin, const SyscallArgs& args, const Memcheck& memcheck):
      tracee1(tracee1),
      tracee2(tracee2),
      page_set(page_set),
      stack_range(stack_begin, tracee1.get_sp()),
      args(args),
      memcheck(memcheck)
    {}

    bool pre();
    void post();

  private:
    dbi::Tracee& tracee1;
    dbi::Tracee& tracee2;
    PageSet& page_set;
    AddrRange stack_range;
    const SyscallArgs& args;
    SyscallArgs taint_args;
    const Memcheck& memcheck;

    using IOVec = std::vector<struct iovec>;
    using IOData = std::vector<std::vector<char>>;

    IOTransaction new_transaction() { return IOTransaction(tracee1, tracee2); }
    IOTransfer new_write_group() { return IOTransfer(tracee1, tracee2); }

    bool check_read(IOTransaction& transaction);

    bool check_write(void *begin, void *end) const;
    bool check_write(void *begin, size_t size) const;

#define SYSCALLS_CHECK_PRE_DECL(name, ...) bool pre_##name();
    SYSCALLS(SYSCALLS_CHECK_PRE_DECL)
#undef SYSCALLS_CHECK_PRE_DECL
  
#define SYSCALLS_CHECK_POST_DECL(name, ...) void post_##name();
    SYSCALLS(SYSCALLS_CHECK_POST_DECL)
#undef SYSCALLS_CHECK_POST_DECL
  };


}
