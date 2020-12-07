#pragma once

struct Config {
  enum class PredictionMode {NONE, ICLASS, IFORM, DIR, LAST_ICLASS};

  bool gdb = false;
  bool profile = false;
  bool singlestep = false;
  bool execution_trace = false;
  bool dump_ss_bkpts = false;
  PredictionMode prediction_mode;
  bool dump_jcc_info;

  bool set_prediction_mode(const char *s);

private:
  bool set_prediction_mode(const char *s, PredictionMode Config::*memb);
  
};

extern Config g_conf;

#define STATE_MISMATCH_INFO 1

