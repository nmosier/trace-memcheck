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
#include "shared-util.hh"

namespace dbi {
  
  void Tracee::attach(pid_t pid, const char *command, bool stopped) {
    assert(!stopped);
    pid_ = pid;
    this->command = command;
    regs_good_ = false;
    fpregs_good_ = false;
    stopped_ = stopped;
    memcache_.clear();

    /* stop if necessary */
    if (!this->stopped()) {
      wait();
      assert(status().stopped()); // stopped status can be SIGSTOP or SIGTRAP
      assert(this->stopped());
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
      status_ = other.status_;

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
      status_ = other.status_;
      
      /* Duplicate file descriptor */
      if ((fd_ = ::dup(other.fd_)) < 0) {
	std::perror("dup");
	std::abort();
      }
      
    }

    return *this;
  }

  Tracee::~Tracee(void) {
    if (good()) {
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
    
    const auto bytes_read = ::pread(fd(), to_, count, reinterpret_cast<off_t>(from_));
    if (bytes_read < 0) {
      std::perror("pread");
      std::fprintf(stderr, "pc = %p\n", (void *) get_pc());
      g_conf.abort(*this);
    } else if (bytes_read == 0) {
      std::cerr << "pread: partial read occurred\n";
      std::abort();
    }
    assert(static_cast<size_t>(bytes_read) == count);
  }

  size_t Tracee::iovec_bytes(const struct iovec *iov, size_t count) {
    const auto make_it = [] (const struct iovec *iov) {
      return util::make_transform_iterator<size_t>(iov, [] (const struct iovec& iov) {
	return iov.iov_len;
      });
    };
    const auto begin = make_it(iov);
    const auto end = make_it(iov + count);
    return std::accumulate(begin, end, 0UL);
  }

  void Tracee::iovec_check(const struct iovec *to_iov, size_t to_count,
			     const struct iovec *from_iov, size_t from_count, size_t total_bytes) {
#ifndef NDEBUG
    const auto from_bytes = iovec_bytes(from_iov, from_count);
    const auto to_bytes = iovec_bytes(to_iov, to_count);
    assert(from_bytes == total_bytes);
    assert(to_bytes == total_bytes);
#endif
  }
  

  void Tracee::readv(const struct iovec *to_iov, size_t to_count, const struct iovec *from_iov,
		     size_t from_count, size_t total_bytes) {
    if (total_bytes == 0) {
      return;
    }
    
    while (true) {
      const auto bytes_read = ::process_vm_readv(pid(), to_iov, to_count, from_iov, from_count, 0);
      if (bytes_read < 0) {
	std::perror("process_vm_readv");
	std::abort();
      } else if (bytes_read == 0) {
	*g_conf.log << "process_vm_readv: unexpected end-of-file\n";
	std::abort();
      } else if (static_cast<size_t>(bytes_read) == total_bytes) { 
	break;
      } 
    } 

    iovec_check(to_iov, to_count, from_iov, from_count, total_bytes);
  }

  void Tracee::writev(const struct iovec *to_iov, size_t to_count, const struct iovec *from_iov,
		      size_t from_count, size_t total_bytes) {
    if (total_bytes == 0) {
      return;
    }
    
    const auto bytes_written = ::process_vm_writev(pid(), from_iov, from_count, to_iov, to_count,
						   0);
    if (bytes_written < 0) {
      std::perror("process_vm_writev");
      g_conf.abort(*this);
    } else if (static_cast<size_t>(bytes_written) != total_bytes) {
      std::cerr << "process_vm_writev: partial write occurred\n";
      std::abort();
    }

    iovec_check(to_iov, to_count, from_iov, from_count, total_bytes);
  }
  
  void Tracee::write(const void *from, size_t count, void *to) {
    assert(good());
    assert(stopped());

    const auto bytes_written = ::pwrite(fd(), from, count, reinterpret_cast<off_t>(to));
    if (bytes_written < 0) {
      std::perror("pwrite");
      std::abort();
    } else if (static_cast<size_t>(bytes_written) != count) {
      std::fprintf(stderr, "perror: partial write occurred\n");
      std::abort();
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
    const auto pc = reinterpret_cast<void *>(regs.rip);
    using Code = std::array<uint8_t, 2>;
    const Code syscall = {0x0f, 0x05};
    Code saved_code;
    read(saved_code, pc);
    write(syscall, pc);

    this->syscall(pc, regs);

    write(saved_code, pc);
  }

  void Tracee::syscall(void *syscall_ptr, user_regs_struct& regs) {
    switch (regs.rax) {
    case SYS_fork:
      assert(false);
      break;
    }

    regs.rip = reinterpret_cast<unsigned long>(syscall_ptr);
    const auto saved_regs = get_gpregs();
    set_regs(regs);
    
    singlestep();
    wait();
    assert(status().stopped_trap());

    get_regs(regs);
    set_regs(saved_regs);
  }

  uintptr_t Tracee::syscall_bare(void *syscall_ptr, long syscallno, uintptr_t a0, uintptr_t a1,
				 uintptr_t a2, uintptr_t a3, uintptr_t a4, uintptr_t a5) {
    user_regs_struct regs = get_gpregs();
    regs.rax = static_cast<unsigned>(syscallno);
    regs.rdi = a0;
    regs.rsi = a1;
    regs.rdx = a2;
    regs.r10 = a3;
    regs.r8  = a4;
    regs.r9  = a5;

    if (syscall_ptr == nullptr) {
      syscall(regs);
    } else {
      syscall(syscall_ptr, regs);
    }

    return regs.rax;
  }

  pid_t Tracee::fork(Tracee& forked_tracee, void *syscall_ptr) {
    assert(stopped());
    const bool rewrite = syscall_ptr == nullptr;
    const auto saved_regs = get_gpregs();
    auto fork_regs = saved_regs;
    fork_regs.rax = SYS_fork;
    if (!rewrite) {
      fork_regs.rip = reinterpret_cast<unsigned long>(syscall_ptr);
    }
    set_gpregs(fork_regs);
    const auto pc = reinterpret_cast<uint8_t *>(saved_regs.rip);
    static const std::array<uint8_t, 3> syscall = {0x0f, 0x05, 0x90};
    std::array<uint8_t, 3> saved_code;
    read(saved_code, pc);

    if (rewrite) {
      write(syscall, pc);
    }
    
    singlestep();
    wait();
    assert(status().stopped_trap());
    assert(status().ptrace_event() == PTRACE_EVENT_FORK);
    singlestep();
    wait();
    assert(status().stopped_trap() && status().ptrace_event() == 0);
    
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

    if (msg_pid >= 0) {
      forked_tracee = Tracee(msg_pid, filename(), false);
      forked_tracee.fork_cleanup(pc, saved_regs, rewrite, saved_code);
    }

    fork_cleanup(pc, saved_regs, rewrite, saved_code);

    return msg_pid;
  }

  void Tracee::fork_cleanup(uint8_t *pc, const user_regs_struct& saved_regs, bool restore_code,
			    const std::array<uint8_t, 3>& saved_code) {
    if (restore_code) {
      write(saved_code, pc);
    }
    
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
    ::execlp("gdb", "gdb", command, pid_str, nullptr);
    std::perror("execlp");
    std::abort();
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

  void Tracee::assert_stopsig(int expect) {
    if (status().stopped()) {
      const auto stopsig = status().stopsig();
      if (stopsig != expect) {
	*g_conf.log << "Tracee::assert_stopsig: unexpected stop signal '"
		    << ::strsignal(stopsig) << "'\n";
	g_conf.abort(*this);
      }
    } else {
      if (status().signaled()) {
	*g_conf.log << "Tracee::assert_stopsig: unexpected signal '"
		    << ::strsignal(status().termsig()) << "\n";
	g_conf.abort(*this);
      } else {
	*g_conf.log << "Tracee::assert_stopsig: unknown status " << status().status() << "\n";
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
