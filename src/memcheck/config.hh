#pragma once

#include <fstream>
#include <unordered_map>
#include <cassert>

#include "dbi/config.hh"
#include "syscall.hh"

namespace memcheck {

  struct Config {
    dbi::Config& dbi;
    std::ofstream map_file;
    bool preload = true;
    unsigned syscall_mode_safety_level = 1; // 0 is highest

    Config(dbi::Config& dbi = dbi::g_conf): dbi(dbi) {}
    
    [[noreturn]] void abort(dbi::Tracee& tracee) {
      map_file << "[" << tracee.pid() << "]\n";
      tracee.cat_maps(map_file);
      map_file.flush();
      dbi.abort(tracee);
    }
    void assert_(bool pred, dbi::Tracee& tracee) {
#ifndef NDEBUG
      if (!pred) { abort(tracee); }
#endif
    }

    void ss_syscall(Syscall syscall, unsigned count) {
      syscall_counts[syscall] = {0, count};
    }
    void ss_syscall(const char *syscall, unsigned count) {
      ss_syscall(to_syscall(syscall), count);
    }
    
    void add_syscall(Syscall syscall) {
      auto it = syscall_counts.find(syscall);
      if (it == syscall_counts.end()) { return; }
      auto& pair = it->second;
      ++pair.first;
      if (pair.first == pair.second) {
	dbi.singlestep = true;
	dbi.execution_trace = true;
      }
    }

    std::ostream& log() const {
      assert(dbi.log != nullptr);
      return *dbi.log;
    }

  private:
    std::unordered_map<Syscall, std::pair<unsigned, unsigned>> syscall_counts;
  };

  extern Config g_conf;
  
}
