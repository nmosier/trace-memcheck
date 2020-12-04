#pragma once

#include "inst.hh"
#include "patch.hh"

namespace memchk {

  void transformer(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info);
  
}
