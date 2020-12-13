#pragma once

#include <iostream>
#include "tracee.hh"

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

  bool set_prediction_mode(const char *s);

  void abort(Tracee& tracee) const;

private:
  bool set_prediction_mode(const char *s, PredictionMode Config::*memb);
  
};

extern Config g_conf;

#define STATE_MISMATCH_INFO 1

