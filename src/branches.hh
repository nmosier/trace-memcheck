#pragma once

#include <unordered_map>
#include "decoder.hh"

class BranchPatcher {
public:
  BranchPatcher() {}
  BranchPatcher(int fd): decoder(fd) {}

  void patch(void *root);
  
private:
  using BkptMap = std::unordered_map<void *, uint8_t>;
  enum class InstClass {JUMP, CALL, RET, OTHER};
  
  Decoder decoder;
  BkptMap ind_jumps; // indirect jumps -- permanent
  BkptMap ind_calls; // indirect calls -- permanent
  BkptMap dir_calls; // direct calls   -- temporary

  /* follow basic block until next branch */
  void *find_branch(void *pc, xed_decoded_inst_t& xedd, InstClass& iclass);

  static InstClass classify(xed_iclass_enum_t iclass);
  static bool iclass_is_jump(xed_iclass_enum_t iclass);
  static bool iclass_is_call(xed_iclass_enum_t iclass);
  static bool iclass_is_ret(xed_iclass_enum_t iclass);
};
