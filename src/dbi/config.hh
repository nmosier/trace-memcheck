#pragma once

#include <unordered_map>
#include <iostream>
#include <fstream>
#include <string>
#include "tracee.hh"

struct PrintOptions {
  bool syscall = false;
  bool pagelock = false;

  void enable(const std::string& s);
  void disable(const std::string& s);
  static bool PrintOptions::*str2memb();
};
  
struct Config {
  enum class PredictionMode {NONE, ICLASS, IFORM, DIR, LAST_ICLASS};

  bool gdb = false;
  bool profile = false;
  bool singlestep = false;
  bool execution_trace = false;
  bool execution_trace_diff = false;
  bool dump_ss_bkpts = false;
  PredictionMode prediction_mode;
  bool dump_jcc_info;
  std::ostream *log = &std::clog;
  std::ofstream map_file;
  bool preload = true;
  unsigned verbosity = 0;

  bool set_prediction_mode(const char *s);

  void abort(Tracee& tracee);
#ifndef NASSERT
  void assert_(bool pred, Tracee& tracee) { if (!pred) { abort(tracee); } }
#else
  void assert_(bool pred, Tracee& tracee) {}
#endif

  void ss_syscall(Syscall syscall, unsigned count) { syscall_counts[syscall] = {0, count}; }
  void ss_syscall(const char *syscall, unsigned count) {
    ss_syscall(to_syscall(syscall), count);
  }
  void add_syscall(Syscall syscall) {
    auto it = syscall_counts.find(syscall);
    if (it == syscall_counts.end()) { return; }
    auto& pair = it->second;
    ++pair.first;
    if (pair.first == pair.second) {
      singlestep = true;
      execution_trace = true;
    }
  }

private:
  bool set_prediction_mode(const char *s, PredictionMode Config::*memb);
  std::unordered_map<Syscall, std::pair<unsigned, unsigned>> syscall_counts;
};

extern Config g_conf;

#define STATE_MISMATCH_INFO 1

