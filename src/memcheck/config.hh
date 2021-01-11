#pragma once

#include <fstream>
#include <unordered_map>
#include <cassert>

#include "dbi/config.hh"

namespace memcheck {

  struct Config {
    dbi::Config& dbi;
    std::ofstream map_file;
    bool preload = true;

    Config(dbi::Config& dbi = dbi::g_conf): dbi(dbi) {}
    
    [[noreturn]] void abort(dbi::Tracee& tracee) {
      tracee.cat_maps(map_file);
      map_file.flush();
      dbi.abort(tracee);
    }
    void assert_(bool pred, dbi::Tracee& tracee) { if (!pred) { abort(tracee); } }

    void ss_syscall(dbi::Syscall syscall, unsigned count) { syscall_counts[syscall] = {0, count}; }
    void ss_syscall(const char *syscall, unsigned count) {
      ss_syscall(dbi::to_syscall(syscall), count);
    }
    
    void add_syscall(dbi::Syscall syscall) {
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
    std::unordered_map<dbi::Syscall, std::pair<unsigned, unsigned>> syscall_counts;
  };

  extern Config g_conf;
  
}
