#include <new>
#include <stdexcept>
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

void Tracee::open(pid_t pid, const char *command) {
  pid_ = pid;
  this->command = command;
  
  char *path;
  if (asprintf(&path, "/proc/%d/mem", pid_) < 0) {
    std::perror("asprintf");
    throw std::bad_alloc();
  }
  
  fd_ = ::open(path, O_RDWR);

  free(path);

  if (fd_ < 0) {
    std::perror("open");
    throw std::invalid_argument(strerror(errno));
  }
}

Tracee::~Tracee(void) {
  if (fd_ < 0) {
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

void Tracee::read(void *to, size_t count, const void *from) {
  const ssize_t bytes_read = pread(fd(), to, count, (off_t) from);
  if (bytes_read < 0) {
    std::perror("pread");
    fprintf(stderr, "pc = %p\n", (void *) get_pc());
    abort();
  }
  assert((size_t) bytes_read == count);
}

bool Tracee::try_read(void *to, size_t count, const void *from) {
  const ssize_t bytes_read = pread(fd(), to, count, reinterpret_cast<off_t>(from));
  return bytes_read >= 0 && static_cast<size_t>(bytes_read) == count;
}

void Tracee::write(const void *from, size_t count, void *to) const {
  const ssize_t bytes_written = pwrite(fd(), from, count, (off_t) to);
  if (bytes_written < 0) {
    std::perror("pwrite");
    abort();
  }
  assert((size_t) bytes_written == count);
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
  if (!regs_good_) {
    ptrace(PTRACE_GETREGS, pid(), nullptr, &regs_);
    regs_good_ = true;
  }
}

void Tracee::cache_fpregs() {
  if (!fpregs_good_) {
    ptrace(PTRACE_GETFPREGS, pid(), nullptr, &fpregs_);
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
  regs_ = regs; // TODO: Check if not equal?
  regs_good_ = true;
  ptrace(PTRACE_SETREGS, pid(), nullptr, &regs);
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

void Tracee::invalidate_caches() {
  regs_good_ = false;
  fpregs_good_ = false;
}

int Tracee::singlestep(void) {
  invalidate_caches();
  ptrace(PTRACE_SINGLESTEP, pid(), nullptr, nullptr);
  int status;
  wait(&status);
  return status;
}

int Tracee::cont(void) {
  invalidate_caches();
  ptrace(PTRACE_CONT, pid(), nullptr, nullptr);
  int status;
  wait(&status);
  return status;
}

void Tracee::syscall(user_regs_struct& regs) {
  const user_regs_struct saved_regs = get_gpregs();
  set_regs(regs);
  void *pc = (void *) regs.rip;
  const uint8_t syscall[] = {0x0f, 0x05};
  uint8_t saved_code[arrlen(syscall)];

  read(&saved_code, sizeof(saved_code), pc);
  write(&syscall, sizeof(syscall), pc);

  const int status = singlestep();
  (void) status;
  assert(WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP);

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

void Tracee::perror(void) const {
  // TODO: need to call dlsym()
  abort();
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
  ptrace(PTRACE_DETACH, pid(), 0, 0);
  
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

void Tracee::write(const Blob& blob) const {
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
  if (ptrace(PTRACE_GETSIGINFO, pid(), nullptr, &siginfo) < 0) {
    std::perror("ptrace");
    abort();
  }
}

siginfo_t Tracee::get_siginfo() {
  siginfo_t siginfo;
  get_siginfo(siginfo);
  return siginfo;
}

std::ostream& Tracee::cat_maps(std::ostream& os) const {
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

void Tracee::fill(uint8_t val, size_t count, void *to) const {
  std::vector<uint8_t> buf(count, val);
  write(buf.data(), count, to);
}

void Tracee::fill(uint8_t val, void *to_begin, void *to_end) const {
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
  ptrace(PTRACE_SETFPREGS, pid(), nullptr, &fpregs_);
  fpregs_good_ = true;
}

void Tracee::assert_stopsig(int status, int expect) {
  if (WIFSTOPPED(status)) {
    if (WSTOPSIG(status) != expect) {
      *g_conf.log << "Tracee::assert_stopsig: unexpected stop signal '"
		  << strsignal(WSTOPSIG(status)) << "'\n";
      g_conf.abort(*this);
    }
  } else {
    if (WIFSIGNALED(status)) {
      *g_conf.log << "Tracee::assert_stopsig: unexpected signal '"
		  << strsignal(WTERMSIG(status)) << "'\n";
      g_conf.abort(*this);
    } else {
      *g_conf.log << "Tracee::assert_stopsig: unknown status " << status << "\n";
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
