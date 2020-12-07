#include <gperftools/profiler.h>
#include <unordered_set>
#include <sys/wait.h>
#include "patch.hh"
#include "config.hh"

Patcher::Patcher(Tracee& tracee, const Transformer& transformer):
  tracee(tracee), block_pool(tracee, block_pool_size), ptr_pool(tracee, ptr_pool_size),
  rsb(tracee, rsb_size), tmp_mem(tracee, tmp_size), transformer(transformer) {}

bool Patcher::patch(uint8_t *start_pc) {
  const auto lb = [&] (uint8_t *addr) -> uint8_t * {
    const auto res = lookup_block_patch(addr, true);
    if (res == nullptr) { return nullptr; }
    return res->pool_addr();
  };

  const auto pb = [&] (uint8_t *addr) -> uint8_t * {
    const auto it = block_map.find(addr);
    if (it == block_map.end()) {
      return nullptr;
    } else {
      return it->second->pool_addr();
    }
  };

  const auto rb = [&] (uint8_t *addr, const BkptCallback& callback) {
    const auto res = bkpt_map.emplace(addr, callback);
    assert(res.second); (void) res;
  };

  const auto ib = [&] (uint8_t *addr, Block *block) {
    const auto it = block_map.emplace(addr, block);
    assert(it.second); (void) it;
  };

  const auto block_transformer = [&] (uint8_t *addr, Instruction& inst, const Writer& writer) {
    return transformer(addr, inst, TransformerInfo {writer, rb});
  };

  /* create block */
  return Block::Create(start_pc, tracee, block_pool, ptr_pool, tmp_mem, lb, pb, rb, rsb, ib,
		       block_transformer);
}

void Patcher::handle_bkpt(uint8_t *bkpt_addr) {
  const BkptCallback& callback = lookup_bkpt(bkpt_addr);
  callback(bkpt_addr);
}

void Patcher::jump_to_block(uint8_t *orig_addr) {
  auto block_it = block_map.find(orig_addr);
  assert(block_it != block_map.end());
  block_it->second->jump_to();
}

const Patcher::BkptCallback& Patcher::lookup_bkpt(uint8_t *addr) const {
  return bkpt_map.at(addr);
}

Block *Patcher::lookup_block_patch(uint8_t *addr, bool can_fail) {
  assert(!is_pool_addr(addr));
  
  BlockMap::iterator it;
  while (true) {
    it = block_map.find(addr);
    if (it != block_map.end()) {
      break;
    }
    if (!patch(addr)) {
      if (can_fail) {
	return nullptr;
      } else {
	std::cerr << "failed to translate block\n";
	abort();
      }
    }
  }
  
  return it->second;
}

void Patcher::start(uint8_t *root) {
  const bool patched = patch(root);
  assert(patched); (void) patched;
  Block& block = *lookup_block_patch(root, false); // cannot fail
  block.jump_to();
}

void Patcher::start(void) {
  start(tracee.get_pc());
}

bool Patcher::is_pool_addr(uint8_t *addr) const {
  return addr >= block_pool.begin() && addr < block_pool.end();
}

void Patcher::signal(int signum, const sighandler_t& handler) {
  sighandlers[signum] = handler;
}

void Patcher::run(void) {
  //  start();

  if (g_conf.profile) {
    ProfilerStart("memcheck.prof");
  }

  int status;
  while (true) {    
    uint8_t *bkpt_pc;

    if (g_conf.singlestep) {
      status = tracee.singlestep();
    } else {
      status = tracee.cont();
    }

    if (g_conf.execution_trace && !g_conf.singlestep) { 
      if (WIFSTOPPED(status)) {
	std::cerr << "ss pc = " << static_cast<void *>(tracee.get_pc()) << ": ";
	Instruction cur_inst(tracee.get_pc(), tracee);
	std::cerr << cur_inst << '\n';
      }
    }

    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);

      if (stopsig == SIGTRAP) {
	if (g_conf.singlestep) {
	  uint8_t pc_byte;
	  while (true) {
	    if (g_conf.execution_trace) {
	      std::cerr << "ss pc = " << static_cast<void *>(tracee.get_pc()) << ": ";
	      Instruction cur_inst(tracee.get_pc(), tracee);
	      std::cerr << cur_inst << '\n';
	    }

	    bkpt_pc = tracee.get_pc();
	    tracee.read(&pc_byte, 1, bkpt_pc);

	    if (pc_byte != 0xcc) {
	      break;
	    }

	    tracee.set_pc(bkpt_pc + 1);
	    handle_bkpt(bkpt_pc);
	  }
	} else {
	  bkpt_pc = tracee.get_pc() - 1;
	  uint8_t pc_byte;
	  tracee.read(&pc_byte, 1, bkpt_pc);
	  assert(pc_byte == 0xcc);
	  handle_bkpt(bkpt_pc);
	}
      } else {
	handle_signal(stopsig);
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

void Patcher::handle_signal(int signum) {
  const auto it = sighandlers.find(signum);
  if (it == sighandlers.end()) {
    std::cerr << "unexpected signal " << signum << '\n';
    std::cerr << "pc = " << (void *) tracee.get_pc() << '\n';
    uint8_t *stop_pc = tracee.get_pc();
    Instruction inst(stop_pc, tracee);
    std::cerr << "stopped at inst: " << Decoder::disas(inst).c_str() << '\n';
    
    if (g_conf.gdb) {
      tracee.gdb();
    } else {
      abort();
    }
  } else {
    it->second(signum);
  }
}
