#pragma once

#include <unordered_map>
#include <unordered_set>
#include "decoder.hh"

class BranchPatcher {
public:
  BranchPatcher() {}
  BranchPatcher(int fd): fd(fd), decoder(fd) {}

  void patch(void *root);

  /* whether this patcher owns the breakpoint at the given address */
  bool owns_bkpt(void *pc) const;

  /* handle breakpoint hit at given address */
  void handle_bkpt(void *pc, pid_t pid);
  
private:
  enum class InstClass {JUMP, CALL, RET, OTHER};
  enum class InstForm {JUMP_DIR, JUMP_IND, CALL_DIR, CALL_IND, RET, OTHER};
  
  struct BranchInfo {
    uint8_t opcode;
    InstForm iform;
  };
  using BkptMap = std::unordered_map<uint8_t *, BranchInfo>;
  using AddrSet = std::unordered_set<uint8_t *>;

  int fd;
  Decoder decoder;
  BkptMap bkpt_map;
  AddrSet processed_branches; // branches that have already been handled
  AddrSet returning_calls; // calls that return (i.e. aren't noreturn, like exit(3)

  /* follow basic block until next branch */
  uint8_t *find_branch(uint8_t *pc, xed_decoded_inst_t& xedd, InstClass& iclass);

  static InstClass classify(xed_iclass_enum_t iclass);
  static InstForm get_iform(xed_iform_enum_t iform); 
  static bool iclass_is_jump(xed_iclass_enum_t iclass);
  static bool iclass_is_call(xed_iclass_enum_t iclass);
  static bool iclass_is_ret(xed_iclass_enum_t iclass);
  static uint8_t *get_dst(xed_decoded_inst_t& xedd, InstForm iform, uint8_t *pc);
  static bool jmp_can_fallthrough(xed_iclass_enum_t xed_iclass);
  void write_inst_byte(uint8_t *pc, uint8_t opcode);
  
  void insert_bkpt(uint8_t *pc, InstForm iform);
  void remove_bkpt(uint8_t *pc);
  void single_step_bkpt(uint8_t *pc, pid_t pid);

};
