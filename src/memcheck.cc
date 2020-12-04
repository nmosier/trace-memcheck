#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <gperftools/profiler.h>
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

  tracee = Tracee(child, file);
  patcher = Patcher(tracee, memchk::transformer);

  return true;
}

void Memcheck::run(void) {
  patcher->start();

  if (g_conf.profile) {
    ProfilerStart("memcheck.prof");
  }

  while (true) {    
    auto regs = tracee.get_regs();
    if (regs.rbp == (regs.rsp & ((1ULL << 32) - 1))) {
      printf("rbp = %p, rsp = %p\n", (void *) regs.rbp, (void *) regs.rsp);
    }

    int status;
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
      break;
    }
  }

  if (g_conf.profile) {
    ProfilerStop();
  }
}

bool Memcheck::stopped_trace(int status) {
  return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;  
}


namespace memchk {

  static bool is_sp_dec(const Instruction& inst) {
#if 0
    switch (inst.xed_iclass()) {
    case XED_ICLASS_SUB:
    case XED_ICLASS_ADD:
    case XED_ICLASS_XOR:
    case XED_ICLASS_OR:
    case XED_ICLASS_AND:
    case XED_ICLASS_DEC:
      if (inst.xed_reg0() == XED_REG_RSP) {
	return true;
      } else {
	return false;
      }

    default:
      return false;
    }
#else
    return inst.xed_reg0() == XED_REG_RSP;
#endif
  }

  static void *stack_begin;
  static void *stack_end;
  
  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
    (void) addr;

    const bool sp_dec = is_sp_dec(inst);
    (void) sp_dec;
    (void) stack_begin;
    (void) stack_end;
    
    addr = info.writer(inst);
  }
  
}
