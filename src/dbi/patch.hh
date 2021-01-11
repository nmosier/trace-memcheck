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
#include "types.hh"
#include "shared-util.hh"

namespace dbi {

  class Patcher {
  public:
    enum class ExecutionPolicy {SEQUENTIAL, PARALLEL}; // TODO: Use this somewhere

    struct TransformerInfo {
      Writer writer;
      RegisterBkpt rb;
    };
    using Transformer = std::function<void (uint8_t *, Instruction&, const TransformerInfo&)>;

    Patcher() {}

    template <typename... Args>
    Patcher(Args&&... args) { open(std::forward<Args>(args)...); }

    bool good() const { return !tracees.empty(); }
    operator bool() const { return good(); }
    
    void open(Tracees&& tracees, const Transformer& transformer);
    
    using sighandler_t = std::function<void (dbi::Tracee&, int)>;
    void signal(int signum, const sighandler_t& handler);
    using sigaction_t = std::function<void (dbi::Tracee&, int, const siginfo_t&)>;
    void sigaction(int signum, const sigaction_t& sigaction);
  
    void start();
    void run();
  
    uint64_t **tmp_rsp() const { return tmp_mem.rsp(); } // TODO: Should these even be allowed?

    /* find the original address of an instruction in a block */
    uint8_t *orig_block_addr(uint8_t *addr) const;

    const Tracee& tracee() const {
      assert(tracees.size() == 1);
      return tracees.front().tracee;
    }
    
    Tracee& tracee() {
      assert(tracees.size() == 1);
      return tracees.front().tracee;
    }

    Tracees::iterator tracees_begin() { return tracees.begin(); }
    Tracees::const_iterator tracees_begin() const { return tracees.begin(); }
    Tracees::iterator tracees_end() { return tracees.end(); }
    Tracees::const_iterator tracees_end() const { return tracees.end(); }
    const auto& get_tracees() const { return tracees; }
    auto& get_tracees() { return tracees; }
    auto ntracees() const { return tracees.size(); }
    auto ntracees_good() const {
      return std::accumulate(tracees.begin(), tracees.end(), 0UL,
			     [] (auto acc, const auto& tracee_pair) {
			       return acc + static_cast<bool>(tracee_pair.tracee);
			     });
    }

    template <typename F>
    void for_each_tracee_pair(F f) const {
      std::for_each(tracees.begin(), tracees.end(), f);
    }

    template <typename F>
    void for_each_tracee_pair(F f) {
      std::for_each(tracees.begin(), tracees.end(), f);
    }
    
    template <typename F>
    void for_each_tracee(F f) const {
      const auto container = util::make_transform_container<const Tracee&>
	(tracees, [] (const TraceePair& tracee_pair) -> const Tracee& {
	  return static_cast<const Tracee&>(tracee_pair.tracee);
	});
      std::for_each(container.begin(), container.end(), f);
    }

    template <typename F>
    void for_each_tracee(F f) {
      const auto container = util::make_transform_container<Tracee&>
	(tracees, [] (TraceePair& tracee_pair) -> Tracee& {
	  return static_cast<Tracee&>(tracee_pair.tracee);
	});
      std::for_each(container.begin(), container.end(), f);
    }

    template <typename F>
    void for_each_tracee_good(F f) {
      for (auto& pair : tracees) {
	auto& tracee = pair.tracee;
	if (tracee.good()) {
	  f(tracee);
	}
      }
    }

    template <typename F>
    void for_each_tracee_good(F f) const {
      for (const auto& pair : tracees) {
	const auto& tracee = pair.tracee;
	if (tracee.good()) {
	  f(tracee);
	}
      }
    }

    template <typename F>
    void for_each_tracee_pair_good(F f) {
      for (auto& pair : tracees) {
	if (pair.tracee.good()) {
	  f(pair);
	}
      }
    }

    template <typename F>
    void for_each_tracee_pair_good(F f) const {
      for (const auto& pair : tracees) {
	if (pair.tracee.good()) {
	  f(pair);
	}
      }
    }
    
    template <typename Idx>
    const Tracee& tracee_good(Idx idx) const {
      auto it = tracees.begin();
      while (true) {
#ifndef NASSERT
	if (it == tracees.end()) {
	  std::abort();
	}
#endif
	if (it->tracee.good()) {
	  if (idx == 0) {
	    return it->tracee;
	  }
	  --idx;
	}
	
	++it;
      }
    }
    
    template <typename Idx>
    Tracee& tracee_good(Idx idx) {
      auto it = tracees.begin();
      while (true) {
#ifndef NASSERT
	if (it == tracees.end()) {
	  std::abort();
	}
#endif
	if (it->tracee.good()) {
	  if (idx == 0) {
	    return it->tracee;
	  }
	  --idx;
	}
	
	++it;
      }
    }
    void add_tracee(Tracee&& tracee) { tracees.emplace_back(std::move(tracee), false); }

    void suspend(const Tracee& tracee) {
      // TODO: OPTIM
      for_each_tracee_pair([&tracee] (auto& tracee_pair) {
	if (&tracee == &tracee_pair.tracee) {
	  tracee_pair.info.suspended(true);
	}
      });
    }

    void unsuspend(const Tracee& tracee) {
      // TODO: OPTIM
      for_each_tracee_pair([&tracee] (auto& tracee_pair) {
	if (&tracee == &tracee_pair.tracee) {
	  tracee_pair.info.suspended(false);
	}
      });
    }

  private:
    using BlockMap = std::unordered_map<uint8_t *, Block *>;
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
#if 0
    const BkptCallback& lookup_bkpt(uint8_t *addr) const;
#else
    const BkptCallback *lookup_bkpt(uint8_t *addr) const;
#endif
    bool is_pool_addr(uint8_t *addr) const;

    void start_block(uint8_t *root);
    void start_block();

    bool patch(uint8_t *root);
    void handle_bkpt(Tracee& tracee, uint8_t *bkpt_addr);
    void handle_signal(Tracee& tracee, int signum);

    SyscallArgs syscall_args;
    void pre_syscall_handler();
    void post_syscall_handler();

    bool handle_stop(TraceePair& tracee_pair); // returns whether exited
    void handle_ptrace_event(TraceePair& tracee_pair, enum __ptrace_eventcodes event);    
    
    void print_ss(Tracee& tracee) const;

#if 0
    void prune_tracees() {
      for (auto it = tracees.begin(); it != tracees.end(); ) {
	if (!*it) {
	  it = tracees.erase(it);
	} else {
	  ++it;
	}
      }
    }
#endif
  };

}
