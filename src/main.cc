 #include <stdio.h>
 #include <stdlib.h>
 #include <assert.h>
 #include <unistd.h>
 #include <fcntl.h>
 #include <sys/ptrace.h>
 #include <sys/wait.h>
 #include <sys/user.h>
 #include <sys/mman.h>
 #include <vector>
 #include <cstring>

 #include "branches.hh"
 #include "util.hh"
 #include "debug.h"



 static bool stopped_trace(int status) {
   return WIFSTOPPED(status) && WSTOPSIG(status) == SIGTRAP;
 }

 static void print_pc(pid_t child) {
   struct user_regs_struct regs;
   ptrace(PTRACE_GETREGS, child, NULL, &regs);
   printf("rip = %p, *rip = %016lx\n", (void *) regs.rip,
 	 ptrace(PTRACE_PEEKTEXT, child, regs.rip, NULL));
 }


 static void hexdump(const void *buf, size_t count) {
   const char *buf_ = (const char *) buf;
   for (size_t i = 0; i < count; ++i) {
     printf("%02hhx", buf_[i]);
   }
   printf("\n");
 }

 int main(int argc, char *argv[]) {
   if (argc < 2) {
     fprintf(stderr, "usage: %s command [args...]\n", argv[0]);
     return 1;
   }

   char **command = &argv[1];

   pid_t child = fork();
   if (child == 0) {
     ptrace(PTRACE_TRACEME, 0, NULL, NULL);
     execvp(command[0], command);
   }

   const auto cleanup = [child] () {
     kill(child, SIGTERM);
   };

   Decoder::Init();

 #if DEBUG
   printf("child pid = %d\n", child);
 #endif

   int exitno = 1;
   int status;
   wait(&status);
   assert(stopped_trace(status));

   Tracee tracee(child);

#if 0
   /* EXPERIMENTAL: try making system call */
   user_regs_struct regs = get_regs(child);
   regs.rax = 0; // syscall no
   regs.rdi = 0; // int fd
   regs.rsi = regs.rsp - 1; // void *buf
   regs.rdx = 1; // size_t count
   syscall_proc(child, child_fd, regs);
   fprintf(stderr, "eax = %lld\n", regs.rax);
#endif

   BranchPatcher branch_patcher(tracee);

  void *pc;
  pc = tracee.get_pc();
  
  branch_patcher.patch(pc);

  std::vector<void *> insts;

  void *bkpt_pc;
#if SINGLE_STEP
  void *prev_pc = nullptr;
#endif
  while (1) {
    auto regs = tracee.get_regs();
    if (regs.rbp == (regs.rsp & ((1ULL << 32) - 1))) {
      printf("rbp = %p, rsp = %p\n", (void *) regs.rbp, (void *) regs.rsp);
    }

#if SINGLE_STEP
    prev_pc = tracee.get_pc();
    ptrace(PTRACE_SINGLESTEP, child, nullptr, nullptr);
#else
    ptrace(PTRACE_CONT, child, NULL, NULL);
#endif
    wait(&status);
#if DEBUG
    printf("before pc = %p\n", (uint8_t *) tracee.get_pc() - 1);
#endif
    
    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);
       if (stopsig != SIGTRAP) {
	 fprintf(stderr, "unexpected signal %d\n", stopsig);
	 void *stop_pc = tracee.get_pc();
	 
	 Decoder decoder(tracee);
	 fprintf(stderr, "stopped at inst: %s\n", decoder.disas(stop_pc).c_str());

#if GDB
	 const unsigned instlen = decoder.instlen(stop_pc);
	 uint8_t instbuf[Decoder::max_inst_len];
	 memset(instbuf, 0x90, instlen); // NOPs
	 instbuf[0] = 0xeb;
	 instbuf[1] = 0xfe;
	 
	 /* run in infinite loop */
	 tracee.write(instbuf, instlen, tracee.get_pc());
	 ptrace(PTRACE_DETACH, child, 0, 0);
	 
	 char pid_str[16];
	 sprintf(pid_str, "%d", child);
	 execlp("gdb", "gdb", command[0], pid_str, nullptr);
#else
	 abort();
#endif
       }

#if SINGLE_STEP
       uint8_t pc_byte;
       tracee.read(&pc_byte, 1, tracee.get_pc());
       while (pc_byte == 0xcc) {
	 // printf("bkpt pc = %p\n", get_pc(child));
	 bkpt_pc = (void *) ((uint8_t *) tracee.get_pc());
	 insts.push_back(bkpt_pc);
	 tracee.set_pc(bkpt_pc);
	 branch_patcher.handle_bkpt(bkpt_pc);
	 tracee.read(&pc_byte, 1, tracee.get_pc());
       }
# if DEBUG
       fprintf(stderr, "ss pc = %p\n", tracee.get_pc());
# endif

       if (branch_patcher.owns_bkpt((uint8_t *) tracee.get_pc() - 1)) {
	 switch (branch_patcher.get_bkpt_kind((uint8_t *) tracee.get_pc() - 1)) {
	 case BranchPatcher::BkptKind::JUMP_DIR_POST:
	   break;

	 default:
	   {
	     fprintf(stderr, "bad bkpt pc = %p, %s\n", (uint8_t *) tracee.get_pc() - 1, branch_patcher.bkpt_to_str((uint8_t *) tracee.get_pc() - 1).c_str());
	     ptrace(PTRACE_CONT, child, nullptr, (void *) SIGSTOP);
	     wait(NULL);
	     ptrace(PTRACE_DETACH, child, 0, 0);
	     char pid_str[16];
	     sprintf(pid_str, "%d", child);
	     execlp("gdb", "gdb", command[0], pid_str, nullptr);
	   }
	   break;
	 }
       }
#else
       bkpt_pc = (void *) ((uint8_t *) tracee.get_pc() - 1);
       insts.push_back(bkpt_pc);
       tracee.set_pc(bkpt_pc);
       branch_patcher.handle_bkpt(bkpt_pc);       
#endif
    } else {
      break;
    }
#if DEBUG
    printf("after pc = %p\n", tracee.get_pc());
    branch_patcher.print_bkpts();
#endif
  }

#if DEBUG
  printf("done\n");
#endif
  
  assert(WIFEXITED(status));
  // cleanup();

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));
  
  return 0;
}
