#include <new>
#include <stdexcept>
#include <sys/uio.h>
#include <vector>
#include <cstring>
#include <sstream>
#include <fstream>
#include <cstdio>
#include <fcntl.h>
#include <cstdlib>
#include <cassert>
#include <sys/user.h>
#include <cctype>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include "tracee.hh"
#include "util.hh"
#include "decoder.hh"
#include "config.hh"
#include "settings.hh"

namespace dbi {
  
  void Tracee::attach(pid_t pid, const char *command, bool stopped) {
    pid_ = pid;
    this->command = command;
    regs_good_ = false;
    fpregs_good_ = false;
    stopped_ = stopped;
    memcache_.clear();

    /* stop if necessary */
    if (!stopped_) {
      Status status;
      wait(status);
      assert(status.stopped()); (void) status; // stopped status can be SIGSTOP or SIGTRAP
      assert(stopped_);
    }

    std::stringstream path;
    path << "/proc/" << pid_ << "/mem";
  
    fd_ = ::open(path.str().c_str(), O_RDWR);

    if (fd_ < 0) {
      std::perror("open");
      throw std::invalid_argument(strerror(errno));
    }
  }

  Tracee::Tracee(Tracee&& other) {
    set_bad();
    *this = other;
  }

  Tracee& Tracee::operator=(Tracee&& other) {
    if (good()) {
      close();
    }

    if (other.good()) {
      /* Copy members */
      pid_ = other.pid_;
      fd_ = other.fd_;
      command = other.command;
      stopped_ = other.stopped_;
      regs_good_ = other.regs_good_;
      regs_ = other.regs_;
      fpregs_good_ = other.fpregs_good_;
      fpregs_ = other.fpregs_;
      memcache_ = other.memcache_;

      /* Mark other as closed */
      other.set_bad();
    }

    return *this;
  }

  Tracee::Tracee(const Tracee& other) {
    set_bad();
    *this = other;
  }

  Tracee& Tracee::operator=(const Tracee& other) {
    if (good()) {
      close();
    }
    assert(!good());

    if (other.good()) {

      /* Copy members (except fd) */
      pid_ = other.pid_;
      command = other.command;
      stopped_ = other.stopped_;
      regs_good_ = other.regs_good_;
      regs_ = other.regs_;
      fpregs_good_ = other.fpregs_good_;
      fpregs_ = other.fpregs_;
      memcache_ = other.memcache_;
      
      /* Duplicate file descriptor */
      if ((fd_ = ::dup(other.fd_)) < 0) {
	std::perror("dup");
	std::abort();
      }
      
    }

    return *this;
  }

  Tracee::~Tracee(void) {
    if (fd_ >= 0) {
      close();
    }
  }

  void Tracee::close(void) {
    if (::close(fd_) < 0) {
      std::perror("close");
      throw std::invalid_argument(strerror(errno));
    }
    fd_ = -1;
  }

  void Tracee::read(void *to_, size_t count, const void *from_) {
    assert(good());
    assert(stopped());
    
    auto to = static_cast<char *>(to_);
    auto from = static_cast<const char *>(from_);

    if (TRACEE_MEMCACHE) {
      while (count > 0) {
	const auto from_pageaddr = cache_pagealign(from);
	const Page& from_page = read_page(from_pageaddr);
	const auto from_beginidx = from - from_pageaddr;
	const auto cur_count = std::min<size_t>(from_pageaddr + CACHE_PAGE_SIZE - from, count);
	std::copy_n(from_page.data.begin() + from_beginidx, cur_count, to);
	from += cur_count;
	to += cur_count;
	count -= cur_count;
      }
    } else {
      const ssize_t bytes_read = ::pread(fd(), to, count, reinterpret_cast<off_t>(from));
      if (bytes_read < 0) {
	std::perror("pread");
	std::fprintf(stderr, "pc = %p\n", (void *) get_pc());
	g_conf.abort(*this);
      } else if (bytes_read == 0) {
	std::cerr << "pread: unexpected EOF\n";
	std::abort();
      }
      assert(static_cast<size_t>(bytes_read) == count);
    }
  }

  void Tracee::readv(const struct iovec *iov, int iovcnt, const void *from) {
    assert(stopped());
    const ssize_t bytes_read = preadv(fd(), iov, iovcnt, reinterpret_cast<off_t>(from));
    const ssize_t expected_bytes = std::accumulate(iov, iov + iovcnt, 0,
						   [] (const auto acc, const auto& iov) {
						     return acc + iov.iov_len;
						   });
    if (bytes_read != expected_bytes) {
      abort();
    }
  }

  bool Tracee::try_read(void *to, size_t count, const void *from) {
    assert(stopped());
    abort(); // TODO
    
    const ssize_t bytes_read = pread(fd(), to, count, reinterpret_cast<off_t>(from));
    return bytes_read >= 0 && static_cast<size_t>(bytes_read) == count;
  }

  void Tracee::write(const void *from_, size_t count, void *to_) {
    assert(good());
    assert(stopped());
    auto from = static_cast<const char *>(from_);
    auto to = static_cast<char *>(to_);
    if (TRACEE_MEMCACHE) {
      while (count > 0) {
	const auto to_pageaddr = cache_pagealign(to);
	const auto cur_count = std::min<size_t>(to_pageaddr + CACHE_PAGE_SIZE - to, count);
	Page *to_page;
	if (cur_count == CACHE_PAGE_SIZE) {
	  to_page = &write_page(to_pageaddr);
	} else {
	  to_page = &read_page(to_pageaddr);
	}
	const auto to_idx = to - to_pageaddr;
	std::copy_n(from, cur_count, to_page->data.begin() + to_idx);
	to_page->dirty = true;
	from += cur_count;
	to += cur_count;
	count -= cur_count;
      }
    } else {
      const ssize_t bytes_written = pwrite(fd(), from, count, (off_t) to);
      if (bytes_written < 0) {
	std::perror("pwrite");
	abort();
      }
      assert((size_t) bytes_written == count);    
    }
  }

  void Tracee::writev(const struct iovec *iov, int iovcnt, void *to) {
    assert(stopped());
    const auto bytes_expected = std::accumulate(iov, iov + iovcnt, 0,
						[] (const auto acc, const auto& iov) {
						  return acc + iov.iov_len;
						});
    const auto bytes_written = ::pwritev(fd(), iov, iovcnt, reinterpret_cast<off_t>(to));
    if (bytes_written != bytes_expected) {
      abort();
    }
  }

  std::ostream& Tracee::dump(std::ostream& os, const void *ptr, size_t count) {
    std::vector<uint8_t> data(count);
    read(data.data(), count, ptr);
    for (const uint8_t b : data) {
      char s[4];
      sprintf(s, "%02hhx ", b);
      os << s;
    }
    return os;
  }

  void Tracee::cache_regs(void) {
    assert(stopped());
    if (!regs_good_) {
      ptrace(PTRACE_GETREGS, 0, &regs_);
      regs_good_ = true;
    }
  }

  void Tracee::cache_fpregs() {
    assert(stopped());
    if (!fpregs_good_) {
      ptrace(PTRACE_GETFPREGS, 0, &fpregs_);
      fpregs_good_ = true;
    }
  }

  void Tracee::get_gpregs(user_regs_struct& regs) {
    cache_regs();
    regs = get_gpregs();
  }

  const user_regs_struct& Tracee::get_gpregs() {
    cache_regs();
    return regs_;
  }

  void Tracee::set_gpregs(const user_regs_struct& regs) {
    regs_ = regs;
    regs_good_ = true;
  }

  void *Tracee::get_sp(void) {
    return (void *) get_gpregs().rsp;
  }

  void Tracee::set_sp(void *sp) {
    auto regs = get_gpregs();
    regs.rsp = reinterpret_cast<uintptr_t>(sp);
    set_regs(regs);
  }

  uint8_t *Tracee::get_pc(void) {
    return (uint8_t *) get_gpregs().rip;
  }

  void Tracee::set_pc(void *pc) {
    auto regs = get_gpregs();
    regs.rip = (uintptr_t) pc;
    set_regs(regs);
  }

  void Tracee::flush_caches() {
    assert(stopped());
    if (regs_good_) {
      ptrace(PTRACE_SETREGS, 0, &regs_);
    }
    if (fpregs_good_) {
      ptrace(PTRACE_SETFPREGS, 0, &fpregs_);
    }
    flush_memcache();
  }

  void Tracee::invalidate_caches() {
    regs_good_ = false;
    fpregs_good_ = false;
    memcache_.clear();
  }

  void Tracee::syscall(user_regs_struct& regs) {
    assert(static_cast<Syscall>(regs.rax) != Syscall::FORK);
    
    const user_regs_struct saved_regs = get_gpregs();
    set_regs(regs);
    void *pc = (void *) regs.rip;
    const uint8_t syscall[] = {0x0f, 0x05};
    uint8_t saved_code[arrlen(syscall)];

    read(&saved_code, sizeof(saved_code), pc);
    write(&syscall, sizeof(syscall), pc);

    singlestep();
    const Status status = wait();
    assert(status.stopped_trap()); (void) status;
    
    write(&saved_code, sizeof(saved_code), pc);
    get_regs(regs);
    set_regs(saved_regs);
  }

  uintptr_t Tracee::syscall(Syscall syscallno, uintptr_t a0, uintptr_t a1, uintptr_t a2,
			    uintptr_t a3, uintptr_t a4, uintptr_t a5) {
    user_regs_struct regs = get_gpregs();
    regs.rax = static_cast<unsigned>(syscallno);
    regs.rdi = a0;
    regs.rsi = a1;
    regs.rdx = a2;
    regs.r10 = a3;
    regs.r8  = a4;
    regs.r9  = a5;
  
    syscall(regs);

    return regs.rax;
  }

  pid_t Tracee::fork(Status& status, Tracee& forked_tracee) {
    assert(stopped());
    const auto saved_regs = get_gpregs();
    auto fork_regs = saved_regs;
    fork_regs.rax = static_cast<unsigned>(Syscall::FORK);
    set_gpregs(fork_regs);
    const auto pc = reinterpret_cast<uint8_t *>(saved_regs.rip);
    const std::array<uint8_t, 3> syscall = {0x0f, 0x05, 0x90};
    std::array<uint8_t, 3> saved_code;
    read(saved_code, pc);
    write(syscall, pc);
    
    singlestep();
    wait(status);
    assert(status.stopped_trap());
    assert(status.ptrace_event() == PTRACE_EVENT_FORK);
    singlestep();
    wait(status);
    assert(status.stopped_trap() && status.ptrace_event() == 0);
    
#ifndef NASSERT
    get_gpregs(fork_regs);
    const auto reg_pid = static_cast<pid_t>(fork_regs.rax);
#endif
    const auto msg_pid = static_cast<pid_t>(geteventmsg());

#ifndef NASSERT
    if (reg_pid != msg_pid) {
      *g_conf.log << "dbi: Tracee::fork: pid in %eax and PTRACE_GETEVENTMSG mismatch"
		  << "(" << reg_pid << " != " << msg_pid << ")\n";
    }
#endif

    // std::clog << "msg_pid=" << msg_pid << "\n";
    
    if (msg_pid >= 0) {
      forked_tracee = Tracee(msg_pid, filename(), false);
      forked_tracee.fork_cleanup(pc, saved_regs, saved_code);
    }

    fork_cleanup(pc, saved_regs, saved_code);

    return msg_pid;
  }

  void Tracee::fork_cleanup(uint8_t *pc, const user_regs_struct& saved_regs,
			    const std::array<uint8_t, 3>& saved_code) {
    write(saved_code, pc);
    set_regs(saved_regs);
  }

  void Tracee::gdb() {
    Instruction inst(get_pc(), *this);
    const unsigned instlen = inst.size();
    uint8_t instbuf[Decoder::max_inst_len];
    memset(instbuf, 0x90, instlen); // NOPs
    instbuf[0] = 0xeb;
    instbuf[1] = 0xfe;
  
    /* run in infinite loop */
    write(instbuf, std::max<unsigned>(instlen, 2), get_pc());
    resume<PTRACE_DETACH>();
  
    char pid_str[16];
    sprintf(pid_str, "%d", pid());
    execlp("gdb", "gdb", command, pid_str, nullptr);  
  }

  std::pair<uintptr_t, std::string> Tracee::addr_loc(void *addr_) const {
    char path[32];
    sprintf(path, "/proc/%d/maps", pid());

    FILE *f;
    if ((f = fopen(path, "r")) == nullptr) {
      std::perror("fopen");
      abort();
    }

    char line[1024];
    uintptr_t addr = (uintptr_t) addr_;
    for (; fgets(line, sizeof(line), f) != nullptr; ) {
      uintptr_t begin, end;
      const int items = sscanf(line, "%lx-%lx", &begin, &end);
      if (items != 2) {
	fprintf(stderr, "Trace::addr_loc: bad maps format\n");
	abort();
      }

      if (begin <= addr && addr < end) {
	/* get filename */
	char *filename = strchr(line, '/');
	assert(filename != nullptr);
	fclose(f);
	return std::make_pair(addr - begin, filename);
      }
    }

    fprintf(stderr, "Trace::addr_loc: address not found\n");
    abort();
  }

  void Tracee::write(const Blob& blob) {
    write(blob.data(), blob.size(), blob.pc());
  }

  void Tracee::disas(std::ostream& os, uint8_t *begin, uint8_t *end) {
    Instruction inst;
    for (uint8_t *it = begin; it < end; it += inst.size()) {
      inst = Instruction(it, *this);
      std::cerr << inst << std::endl;
    }
  }

  void Tracee::get_siginfo(siginfo_t& siginfo) {
    assert(stopped());
    ptrace(PTRACE_GETSIGINFO, 0, &siginfo);
  }

  siginfo_t Tracee::get_siginfo() {
    siginfo_t siginfo;
    get_siginfo(siginfo);
    return siginfo;
  }

  std::ostream& Tracee::cat_maps(std::ostream& os) const {
    assert(stopped());
    std::stringstream ss;
    ss << "/proc/" << pid() << "/maps";
    std::ifstream ifs;
    ifs.open(ss.str());
    std::string line;
    while (std::getline(ifs, line)) {
      os << line << std::endl;
    }
    return os;
  }

  size_t Tracee::string(const char *begin, std::vector<char>& buf) {
    const char *end = pagealign_up(begin);
    while (true) {
      // TODO: Could optimize for multi-page strings, since it looks for '\0' in first page many times
      buf.resize(end - begin);
      read(static_cast<void *>(buf.data()), end - begin, static_cast<const void *>(begin));
      const auto it = std::find(buf.begin(), buf.end(), '\0');
      if (it != buf.end()) {
	return std::distance(buf.begin(), it);
      }
      end = pageidx(end, 1); // add a page
    }
  }

  size_t Tracee::strlen(const char *addr) {
    std::vector<char> buf;
    return string(addr, buf);
  }

  std::string Tracee::string(const char *addr) {
    std::vector<char> buf;
    return std::string(buf.begin(), buf.begin() + string(addr, buf));
  }

  void Tracee::fill(uint8_t val, size_t count, void *to) {
    std::vector<uint8_t> buf(count, val);
    write(buf.data(), count, to);
  }

  void Tracee::fill(uint8_t val, void *to_begin, void *to_end) {
    fill(val, static_cast<char *>(to_end) - static_cast<char *>(to_begin), to_begin);
  }

  void Tracee::get_fpregs(user_fpregs_struct& fpregs) {
    cache_fpregs();
    fpregs = fpregs_;
  }

  const user_fpregs_struct& Tracee::get_fpregs() {
    cache_fpregs();
    return fpregs_;
  }

  void Tracee::set_fpregs(const user_fpregs_struct& fpregs) {
    fpregs_ = fpregs;
    fpregs_good_ = true;
  }

  void Tracee::assert_stopsig(Status status, int expect) {
    if (status.stopped()) {
      const auto stopsig = status.stopsig();
      if (stopsig != expect) {
	*g_conf.log << "Tracee::assert_stopsig: unexpected stop signal '"
		    << ::strsignal(stopsig) << "'\n";
	g_conf.abort(*this);
      }
    } else {
      if (status.signaled()) {
	*g_conf.log << "Tracee::assert_stopsig: unexpected signal '"
		    << ::strsignal(status.termsig()) << "\n";
	g_conf.abort(*this);
      } else {
	*g_conf.log << "Tracee::assert_stopsig: unknown status " << status.status() << "\n";
	g_conf.abort(*this);
      }
    }
  }

  std::ostream& Tracee::xmm_print(std::ostream& os, unsigned idx) {
    const auto begin = (uint8_t *) get_fpregs().xmm_space + idx * 16;
    const auto end = begin + 16;
    for (auto it = begin; it != end; ++it) {
      os << std::hex << (unsigned) *it;
    }
    return os;
  }

  Tracee::Page& Tracee::read_page(const void *pageaddr) {
    assert(stopped());
    /* TODO: optimize using preadv */
    const auto it = memcache_.find(pageaddr);
    Page *page;
    if (it == memcache_.end()) {
      const auto res = memcache_.emplace(pageaddr, Page());
      assert(res.second);
      page = &res.first->second;
      const auto bytes_read =
	::pread(fd(), page->data.data(), page->data.size(), reinterpret_cast<off_t>(pageaddr));
      assert(bytes_read == static_cast<ssize_t>(page->data.size())); (void) bytes_read;
      page->dirty = false;
    } else {
      page = &it->second;
    }
    return *page;
  }

  Tracee::Page& Tracee::write_page(const void *pageaddr) {
    assert(stopped());
    Page& page = memcache_[pageaddr];
    page.dirty = true;
    return page;
  }

  void Tracee::flush_memcache() {
    assert(stopped());
    /* TODO: OPTIM: optimize using pwritev */
    std::for_each(memcache_.begin(), memcache_.end(), [this] (auto& p) {
      Page& page = p.second;
      if (page.dirty) {
	const auto pageaddr = p.first;
	const auto bytes_written =
	  ::pwrite(this->fd(), page.data.data(), page.data.size(),
		   reinterpret_cast<off_t>(pageaddr));
	assert(bytes_written == static_cast<ssize_t>(page.data.size())); (void) bytes_written;
	page.dirty = false;
      }
    });
  }

  void Tracee::swap(Tracee& other) {
    std::swap(pid_, other.pid_);
    std::swap(fd_, other.fd_);
    std::swap(command, other.command);
    std::swap(stopped_, other.stopped_);
    std::swap(regs_good_, other.regs_good_);
    std::swap(regs_, other.regs_);
    std::swap(fpregs_good_, other.fpregs_good_);
    std::swap(fpregs_, other.fpregs_);
  }

  void Tracee::kill() {
    close();
    const auto res = ::kill(pid(), SIGKILL);
    assert(res == 0); (void) res;
  }
  
}
