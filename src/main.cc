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

static int open_child(pid_t child) {
  char *path;
  if (asprintf(&path, "/proc/%d/mem", child) < 0) {
    perror("asprintf");
    return -1;
  }

  int fd;
  if ((fd = open(path, O_RDWR)) < 0) {
    perror("open");
  }

  free(path);
  return fd;
}

static int close_child(int fd) {
  return close(fd);
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
  BranchPatcher branch_patcher;

#if DEBUG
  printf("child pid = %d\n", child);
#endif

  int exitno = 1;
  int status;
  wait(&status);
  assert(stopped_trace(status));
  
  int child_fd;
  if ((child_fd = open_child(child)) < 0) {
    cleanup();
    return 1;
  }

  branch_patcher = BranchPatcher(child, child_fd);

  void *pc;
  pc = get_pc(child);
  
  branch_patcher.patch(pc);

  std::vector<void *> insts;

  void *bkpt_pc;
#if SINGLE_STEP
  void *prev_pc = nullptr;
#endif
  while (1) {
    auto regs = get_regs(child);
    if (regs.rbp == (regs.rsp & ((1ULL << 32) - 1))) {
      printf("rbp = %p, rsp = %p\n", (void *) regs.rbp, (void *) regs.rsp);
    }

#if SINGLE_STEP
    prev_pc = get_pc(child);
    ptrace(PTRACE_SINGLESTEP, child, nullptr, nullptr);
#else
    ptrace(PTRACE_CONT, child, NULL, NULL);
#endif
    wait(&status);
#if DEBUG
    printf("before pc = %p\n", (uint8_t *) get_pc(child) - 1);
#endif
    
    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);
       if (stopsig != SIGTRAP) {
	 fprintf(stderr, "unexpected signal %d\n", stopsig);
	 void *stop_pc = get_pc(child);
	 
	 Decoder decoder(child_fd);
	 fprintf(stderr, "stopped at inst: %s\n", decoder.disas(stop_pc).c_str());

#if GDB
	 const unsigned instlen = decoder.instlen(stop_pc);
	 uint8_t instbuf[Decoder::max_inst_len];
	 memset(instbuf, 0x90, instlen); // NOPs
	 instbuf[0] = 0xeb;
	 instbuf[1] = 0xfe;
	 
	 /* run in infinite loop */
	 write_proc(child, child_fd, get_pc(child), instbuf, instlen);
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
       read_proc(child, child_fd, get_pc(child), &pc_byte, 1);
       while (pc_byte == 0xcc) {
	 // printf("bkpt pc = %p\n", get_pc(child));
	 bkpt_pc = (void *) ((uint8_t *) get_pc(child));
	 insts.push_back(bkpt_pc);
	 set_pc(child, bkpt_pc);
	 branch_patcher.handle_bkpt(bkpt_pc);
	 read_proc(child, child_fd, get_pc(child), &pc_byte, 1);
       }
       fprintf(stderr, "ss pc = %p\n", get_pc(child));

       if (branch_patcher.owns_bkpt(get_pc(child) - 1)) {
	 switch (branch_patcher.get_bkpt_kind(get_pc(child) - 1)) {
	 case BranchPatcher::BkptKind::JUMP_DIR_POST:
	   break;

	 default:
	   {
	     fprintf(stderr, "bad bkpt pc = %p, %s\n", get_pc(child) - 1, branch_patcher.bkpt_to_str(get_pc(child) - 1).c_str());
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
	 bkpt_pc = (void *) ((uint8_t *) get_pc(child) - 1);
	 insts.push_back(bkpt_pc);
	 set_pc(child, bkpt_pc);
	 branch_patcher.handle_bkpt(bkpt_pc);       
#endif
    } else {
      break;
    }
#if DEBUG
    printf("after pc = %p\n", get_pc(child));
    branch_patcher.print_bkpts();
#endif
  }

#if DEBUG
  printf("done\n");
#endif
  
  if (close_child(child_fd) < 0) {
    cleanup();
    return 1;
  }

  assert(WIFEXITED(status));
  // cleanup();

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));
  
  return 0;
}
