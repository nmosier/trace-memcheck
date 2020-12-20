#include <unordered_set>
#include <map>
#include <sys/wait.h>
#include <fstream>
#include <elf.h>
#include <cstring>
#include "patch.hh"
#include "config.hh"

Patcher::Patcher(Tracee& tracee, const Transformer& transformer):
  tracee(tracee),
  cache(tracee),
  block_pool(tracee, block_pool_size),
  ptr_pool(tracee, ptr_pool_size),
  rsb(tracee, rsb_size),
  tmp_mem(tracee, tmp_size),
  transformer(transformer)
{}

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
		       block_transformer,
		       [this] (...) { pre_syscall_handler(); },
		       [this] (...) { post_syscall_handler(); },
		       cache
		       );
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
	*g_conf.log << "failed to translate block\n";
	abort();
      }
    }
  }
  
  return it->second;
}

#define USE_BKPT 1

#if USE_BKPT
void Patcher::start() {
  /* get entry point */
  std::ifstream ifs;
  ifs.open(tracee.filename());
  assert(ifs);
  

  Elf64_Ehdr ehdr;
  if (!ifs.read(reinterpret_cast<char *>(&ehdr), sizeof(ehdr))) {
    abort();
  }

  // assert(strcmp(reinterpret_cast<const char *>(ehdr.e_ident), ELFMAG) == 0);
  assert(ehdr.e_type == ET_EXEC);

  const auto entry = ehdr.e_entry;

  // TODO: if under ASLR, need to translate into runtime address.

  entry_addr = reinterpret_cast<uint8_t *>(entry);
  tracee.read(&old_entry_byte, 1, entry_addr);
  static const uint8_t bkpt = 0xcc;
  tracee.write(&bkpt, 1, entry_addr);

  const auto status = tracee.cont(); (void) status;
  assert(WIFSTOPPED(status));
  assert(WSTOPSIG(status) == SIGTRAP);
  assert(tracee.get_pc() == entry_addr + 1);
  tracee.write(&old_entry_byte, 1, entry_addr);
  tracee.set_pc(entry_addr);
  start_block();
  
}
#else
void Patcher::start() { start_block(); }
#endif

void Patcher::start_block(uint8_t *root) {
  const bool patched = patch(root);
  assert(patched); (void) patched;
  Block& block = *lookup_block_patch(root, false); // cannot fail
  block.jump_to();
}

void Patcher::start_block(void) {
  start_block(tracee.get_pc());
}

bool Patcher::is_pool_addr(uint8_t *addr) const {
  return addr >= block_pool.begin() && addr < block_pool.end();
}

void Patcher::sigaction(int signum, const sigaction_t& handler) {
  sighandlers[signum] = handler;
}

void Patcher::signal(int signum, const sighandler_t& handler) {
  sigaction(signum, [&handler] (int signum, auto&&... args) { handler(signum); });
}

void Patcher::run(void) {
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
	*g_conf.log << "ss pc = " << static_cast<void *>(tracee.get_pc())
		  << " " << static_cast<void *>(orig_block_addr(tracee.get_pc()))
		  << ": ";
	Instruction cur_inst(tracee.get_pc(), tracee);
	*g_conf.log << cur_inst << '\n';
      }
    }

    if (WIFSTOPPED(status)) {
      const int stopsig = WSTOPSIG(status);

      if (stopsig == SIGTRAP) {
	if (g_conf.singlestep) {
	  uint8_t pc_byte;
	  while (true) {
	    if (g_conf.execution_trace) {
	      *g_conf.log << "ss pc = " << static_cast<void *>(tracee.get_pc())
			<< " " << static_cast<void *>(orig_block_addr(tracee.get_pc()))
			<< ": ";
	      Instruction cur_inst(tracee.get_pc(), tracee);
	      *g_conf.log << cur_inst << '\n';
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
#ifndef NASSERT
	  uint8_t pc_byte;
	  tracee.read(&pc_byte, 1, bkpt_pc);
	  assert(pc_byte == 0xcc);
#endif
	  handle_bkpt(bkpt_pc);
	}
      } else {
	handle_signal(stopsig);
      }
    } else {
      if (!WIFEXITED(status)) {
	if (WIFSIGNALED(status)) {
	  const auto termsig = WTERMSIG(status);
	  std::cerr << strsignal(termsig) << ": " << termsig << "\n";
	} else {
	  std::cerr << "aborted due to unknown signal\n";
	}
	g_conf.abort(tracee);
      }
      assert(WIFEXITED(status));
      break;
    }
  }

  fprintf(stderr, "exit status: %d\n", WEXITSTATUS(status));  
}

void Patcher::handle_signal(int signum) {
  const auto it = sighandlers.find(signum);
  if (it == sighandlers.end()) {
    *g_conf.log << "unexpected signal " << signum << '\n';
    *g_conf.log << "pc = " << (void *) tracee.get_pc() << '\n';
    uint8_t *stop_pc = tracee.get_pc();
    Instruction inst(stop_pc, tracee);
    *g_conf.log << "stopped at inst: " << Decoder::disas(inst).c_str() << '\n';
    g_conf.abort(tracee);
  } else {
    auto siginfo = tracee.get_siginfo();
    it->second(signum, siginfo);
  }
}

uint8_t *Patcher::orig_block_addr(uint8_t *addr) const {
  /* create map from new block addresses to orig block addresses */
  std::map<uint8_t *, uint8_t *> map;
  std::transform(block_map.begin(), block_map.end(), std::inserter(map, map.end()),
		 [] (const auto& p) {
		   return std::make_pair(p.second->pool_addr(), p.first);
		 });
  auto it = map.upper_bound(addr);
  assert(it != map.begin());
  --it;
  return it->second;
}

void Patcher::pre_syscall_handler() {
  syscall_args.add_call(tracee);
}

void Patcher::post_syscall_handler() {
  syscall_args.add_ret(tracee);

  switch (syscall_args.no()) {
  case Syscall::MUNMAP:
    if (syscall_args.rv<int>() == 0) {
      cache.invalidate(syscall_args.arg<0, void *>(),
		       pagealign_up(syscall_args.arg<1, size_t>()));
    }
    break;
    
  case Syscall::MREMAP: abort();
  }
}
