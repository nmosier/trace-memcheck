#pragma once

#include "inst.hh"
#include "util.hh"
#include "patch.hh"

class Memcheck {
public:
  Memcheck(void) {}

  bool open(const char *file, char * const argv[]);
  void run(void);
  
private:
  Tracee tracee;
  util::optional<Patcher> patcher;

  static bool stopped_trace(int status);
};

namespace memchk {
  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);
  
}
