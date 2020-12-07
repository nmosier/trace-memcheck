#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sstream>
#include "memcheck.hh"

bool Memcheck::open(const char *file, char * const argv[]) {
  const pid_t child = fork();
  if (child == 0) {
    ptrace(PTRACE_TRACEME, 0, nullptr, nullptr);
    execvp(file, argv);
    return false;
  }
  
  Decoder::Init();
  
  int status;
  wait(&status);
  assert(stopped_trace(status));

  tracee.open(child, file);
  // TODO: open patcher
  patcher = Patcher(tracee, [this] (auto&&... args) { return this->transformer(args...); });
  patcher->start();
  maps_gen.open(child);

  get_maps();
  
  // patcher->signal(SIGSEGV, [this] (int signum) { segfault_handler(signum); });
  state.save(tracee, maps.begin(), maps.end());

  return true;
}


bool Memcheck::stopped_trace(int status) {
  return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;  
}


bool Memcheck::is_sp_dec(const Instruction& inst) {
  return inst.xed_reg0() == XED_REG_RSP;
}

void Memcheck::transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
  (void) addr;

#if 1
  const bool sp_dec = is_sp_dec(inst);
  if (sp_dec) {
    addr = stack_tracker.add(addr, inst, info);
    return;
  }
#endif

#if 1
  if (inst.xed_iclass() == XED_ICLASS_SYSCALL) {
    addr = syscall_tracker.add(addr, inst, info);
    return;
  }
#endif
    
  addr = info.writer(inst);
}

void StackTracker::pre_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  it->second->sp = tracee.get_sp();
}

void StackTracker::post_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  const auto post_sp = tracee.get_sp();
  const auto& pre_sp = it->second->sp;

  if (post_sp < pre_sp) {
#if 0
    std::cerr << "sp dec @ " << (const void *) it->second->orig_addr << ": " << it->second->inst_str
	      << std::endl;
#endif
  }
}

uint8_t *StackTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
  auto elem = std::make_shared<Elem>(inst);
  
  const auto pre_addr = addr;
  auto pre_bkpt = Instruction::int3(addr);
  addr = info.writer(pre_bkpt);
  addr = info.writer(inst);
  const auto post_addr = addr;
  auto post_bkpt = Instruction::int3(addr);
  addr = info.writer(post_bkpt);

  info.rb(pre_addr, pre_callback);
  info.rb(post_addr, post_callback);

  map.emplace(pre_addr, elem);
  map.emplace(post_addr, elem);
  
  return addr;
}

StackTracker::Elem::Elem(const Instruction& inst): orig_addr(inst.pc())
{
  std::stringstream ss;
  ss << inst;
  inst_str = ss.str();
}

uint8_t *SyscallTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info)
{
  const auto pre_bkpt_addr = addr;
  auto pre_bkpt_inst = Instruction::int3(addr);
  addr = info.writer(pre_bkpt_inst);
  addr = info.writer(inst);
  const auto post_bkpt_addr = addr;
  auto post_bkpt_inst = Instruction::int3(addr);
  addr = info.writer(post_bkpt_inst);

  info.rb(pre_bkpt_addr, util::method_callback(*this, &SyscallTracker::pre_handler));
  info.rb(post_bkpt_addr, util::method_callback(*this, &SyscallTracker::post_handler));
  return addr;
}

void Memcheck::run() {
  patcher->run();
}

void Memcheck::segfault_handler(int signum) {
  const siginfo_t siginfo = tracee.get_siginfo();

  void *fault_addr = siginfo.si_addr;
  std::cerr << "segfault @ " << fault_addr << std::endl;

  tracee.syscall(Syscall::MPROTECT, (uintptr_t) mprotect_ptr(fault_addr), mprotect_size, PROT_READ | PROT_WRITE);
}

void Memcheck::clear_access() {
  std::vector<Map> map_list;
  maps_gen.get_maps(std::back_inserter(map_list));

  for (const Map& map : map_list) {
    if ((map.prot & PROT_WRITE)) {
      tracee.syscall(Syscall::MPROTECT, (uintptr_t) map.begin, map.size(), map.prot & ~PROT_WRITE);
    }
  }
}

void Memcheck::get_maps() {
  maps.clear();
  maps_gen.get_maps(util::conditional_inserter<MapList>(std::inserter(maps, maps.end()),
							[] (auto map) {
							  return (map.prot & PROT_WRITE) != 0;
							}));
  assert(maps_has_addr(tracee.get_sp()));
}

void SyscallTracker::pre_handler(uint8_t *addr) {
  syscall.add_call(tracee);

  std::cerr << "syscall " << syscall.no() << '\n';
  
  State new_syscall_state(tracee, memcheck.maps.begin(), memcheck.maps.end());

  static bool counter = false;
  static Syscall last_syscall;
  static user_regs_struct last_regs;

  if (!counter) {
    syscall_state = new_syscall_state;
    last_syscall = syscall.no();
    last_regs = tracee.get_regs();
    
    memcheck.state.restore(tracee);
    std::cerr << "rewound execution" << std::endl;

    State new_state(tracee, memcheck.maps.begin(), memcheck.maps.end());
    assert(new_state == memcheck.state);
  } else {
    assert(last_regs == tracee.get_regs());
    assert(syscall.no() == last_syscall);
    if (syscall_state != new_syscall_state) {
      std::cerr << "state mismatch syscall\n";
    }
  }
  
  counter = !counter;
}

void SyscallTracker::dump_stack() {
  /* dump stack */
  const auto sp = tracee.get_sp();
  std::array<uint64_t, 16> buf;
  tracee.read(buf.data(), buf.size() * sizeof(uint64_t), sp);
  std::clog << std::hex;
  for (uint64_t v : buf) {
    fprintf(stderr, "%016lx\n", v);
  }  
}

void SyscallTracker::post_handler(uint8_t *addr) {
  syscall.add_ret(tracee);

  switch (syscall.no()) {
  case Syscall::MMAP:
  case Syscall::MUNMAP:
  case Syscall::MREMAP:
  case Syscall::BRK:
    // TODO: Faster to just add/remove particular instance.
    if (syscall.rv<long long>() != -1) {
      regen_maps();
    }
    break;
  }

  memcheck.state.save(tracee, memcheck.maps.begin(), memcheck.maps.end());
  assert(memcheck.maps_has_addr(tracee.get_sp()));
}

bool Memcheck::maps_has_addr(const void *addr) const {
  return std::any_of(maps.begin(), maps.end(), [addr] (const auto& map) {
    return map.has_addr(addr);
  });
}

std::ostream& Memcheck::print_maps(std::ostream& os) const {
  for (const auto& map : maps) {
    os << map << "\n";
  }
  return os;
}
