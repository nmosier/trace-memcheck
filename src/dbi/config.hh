#pragma once

#include <iostream>
#include <fstream>
#include <string>
#include "tracee.hh"

namespace dbi {
  
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
    unsigned verbosity = 0;

    bool set_prediction_mode(const char *s);

    [[noreturn]] void abort(Tracee& tracee);
#ifndef NASSERT
    void assert_(bool pred, Tracee& tracee) { if (!pred) { abort(tracee); } }
#else
    void assert_(bool pred, Tracee& tracee) {}
#endif

  private:
    bool set_prediction_mode(const char *s, PredictionMode Config::*memb);
  };

  extern Config g_conf;

#define STATE_MISMATCH_INFO 1

}
