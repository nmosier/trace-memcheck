#pragma once

#include <unordered_map>
#include <memory>
#include <cassert>
#include <sys/types.h>

#include "tracee.hh"
#include "block.hh"
#include "block-pool.hh"
#include "block-term.hh"
#include "rsb.hh"
#include "tmp-mem.hh"
#include "romcache.hh"
#include "syscall-args.hh"
#include "status.hh"

namespace dbi {

  class Patcher {
  public:
    enum class ExecutionPolicy {SEQUENTIAL, PARALLEL}; // TODO: Use this somewhere
    
    using RegisterBkpt = Block::RegisterBkpt;
    using Writer = Block::Writer;
    struct TransformerInfo {
      Writer writer;
      RegisterBkpt rb;
    };
    using Transformer = std::function<void (uint8_t *, Instruction&, const TransformerInfo&)>;

    Patcher(Tracees&& tracees, const Transformer& transformer);

    using sighandler_t = std::function<void (int)>;
    void signal(int signum, const sighandler_t& handler);
    using sigaction_t = std::function<void (int, const siginfo_t&)>;
    void sigaction(int signum, const sigaction_t& sigaction);
  
    void start();
    void run();
  
    uint64_t **tmp_rsp() const { return tmp_mem.rsp(); } // TODO: Should these even be allowed?

    /* find the original address of an instruction in a block */
    uint8_t *orig_block_addr(uint8_t *addr) const;

    Tracee& tracee() {
      assert(tracees.size() == 1);
      return tracees.front();
    }

  private:
    using BlockMap = std::unordered_map<uint8_t *, Block *>;
    using BkptCallback = Terminator::BkptCallback;
    using BkptMap = std::unordered_map<uint8_t *, BkptCallback>;

    static constexpr size_t block_pool_size = 0x100000;
    static constexpr size_t ptr_pool_size = 0x30000;
    static constexpr size_t rsb_size = 0x1000;
    static constexpr size_t tmp_size = 0x1000;

    Tracees tracees;
    BlockMap block_map;
    BkptMap bkpt_map;
    BlockPool block_pool;
    PointerPool ptr_pool;
    ReturnStackBuffer rsb;
    TmpMem tmp_mem;
    Transformer transformer;
    std::unordered_map<int, sigaction_t> sighandlers;
    uint8_t *entry_addr;
    uint8_t old_entry_byte;

    Block *lookup_block_patch(uint8_t *addr, bool can_fail);
    const BkptCallback& lookup_bkpt(uint8_t *addr) const;
    bool is_pool_addr(uint8_t *addr) const;

    void start_block(uint8_t *root);
    void start_block();

    bool patch(uint8_t *root);
    void handle_bkpt(Tracee& tracee, uint8_t *bkpt_addr);
    void handle_signal(Tracee& tracee, int signum);

    SyscallArgs syscall_args;
    void pre_syscall_handler();
    void post_syscall_handler();

    bool handle_stop(Tracee& tracee, Status status); // returns whether exited
    void handle_ptrace_event(Tracee& tracee, enum __ptrace_eventcodes event);

    void print_ss(Tracee& tracee) const;

    template <typename F>
    void for_each_tracee(F f) const {
      std::for_each(tracees.begin(), tracees.end(), f);
    }

    template <typename F>
    void for_each_tracee(F f) {
      std::for_each(tracees.begin(), tracees.end(), f);
    }

  };

}
