#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <gperftools/profiler.h>
#include <sstream>
#include "memcheck.hh"
#include "config.hh"

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
  patcher = Patcher(tracee, [this] (auto&&... args) { return this->transformer(args...); });

  return true;
}

void Memcheck::run(void) {
  patcher->start();

  if (g_conf.profile) {
    ProfilerStart("memcheck.prof");
  }

  int status;
  while (true) {    
    auto regs = tracee.get_regs();
    if (regs.rbp == (regs.rsp & ((1ULL << 32) - 1))) {
      printf("rbp = %p, rsp = %p\n", (void *) regs.rbp, (void *) regs.rsp);
    }

    uint8_t *bkpt_pc;

    if (g_conf.singlestep) {
      status = tracee.singlestep();
    } else {
      status = tracee.cont();
    }

    if (g_conf.execution_trace) { 
      if (WIFSTOPPED(status)) {
	std::clog << "ss pc = " << static_cast<void *>(tracee.get_pc()) << ": ";
	Instruction cur_inst(tracee.get_pc(), tracee);
	std::clog << cur_inst << std::endl;
      }
    }

    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);
      if (stopsig != SIGTRAP) {
	fprintf(stderr, "unexpected signal %d\n", stopsig);
	fprintf(stderr, "pc = %p\n", tracee.get_pc());
	uint8_t *stop_pc = tracee.get_pc();
	Instruction inst(stop_pc, tracee);
	fprintf(stderr, "stopped at inst: %s\n", Decoder::disas(inst).c_str());
	
	if (g_conf.gdb) {
	  tracee.gdb();
	} else {
	  abort();
	}
      }

      if (g_conf.singlestep) {
	uint8_t pc_byte;
	tracee.read(&pc_byte, 1, tracee.get_pc());
	while (pc_byte == 0xcc) {
	  bkpt_pc = tracee.get_pc();
	  tracee.set_pc(bkpt_pc);
	  patcher->handle_bkpt(bkpt_pc);

	  if (g_conf.execution_trace) {
	    std::clog << "ss pc = " << static_cast<void *>(tracee.get_pc()) << ": ";
	    Instruction cur_inst(tracee.get_pc(), tracee);
	    std::clog << cur_inst << std::endl;
	  }
	  tracee.read(&pc_byte, 1, tracee.get_pc());
	}
      } else {
	bkpt_pc = tracee.get_pc() - 1;
	uint8_t pc_byte;
	tracee.read(&pc_byte, 1, bkpt_pc);
	assert(pc_byte == 0xcc);
	patcher->handle_bkpt(bkpt_pc);
      }
    } else {
      assert(WIFEXITED(status));
      break;
    }
  }

  if (g_conf.profile) {
    ProfilerStop();
  }

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));  
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
    std::clog << "sp dec @ " << (const void *) it->second->orig_addr << ": " << it->second->inst_str
	      << std::endl;
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

uint8_t *SyscallTracker::add(uint8_t *addr, Instruction& inst,
			     const Patcher::TransformerInfo& info) {
  const auto bkpt_addr = addr;
  auto bkpt_inst = Instruction::int3(addr);
  addr = info.writer(bkpt_inst);
  addr = info.writer(inst);

  info.rb(bkpt_addr, [this] (auto addr) {
    std::clog << "syscall " << tracee.get_regs().rax << std::endl;
  });

  return addr;
}
