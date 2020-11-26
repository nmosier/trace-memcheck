#pragma once

struct Config {
  bool gdb = false;
  bool profile = false;
  bool singlestep = false;
  bool execution_trace = false;
  bool dump_ss_bkpts = false;
};

extern Config g_conf;
