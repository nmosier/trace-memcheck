#pragma once

#include <unordered_map>
#include <unordered_set>
#include "decoder.hh"

class BranchPatcher {
public:
  BranchPatcher() {}
  BranchPatcher(pid_t pid, int fd): pid(pid), fd(fd), decoder(fd) {}

  void patch(void *root);

  /* whether this patcher owns the breakpoint at the given address */
  bool owns_bkpt(void *pc) const;

  /* handle breakpoint hit at given address */
  void handle_bkpt(void *pc);

  void print_bkpts(void) const;
  
private:
  enum class InstClass {JUMP, CALL, RET, OTHER};
  enum class BkptKind {JUMP_DIR, JUMP_DIR_POST, JUMP_IND, CALL_DIR, CALL_IND, RET, CALL_DIR_PEND,
      CALL_IND_PEND};

  struct BranchInfo {
    uint8_t   opcode;
    BkptKind   iform;
    unsigned instlen;
  };
  using BkptMap = std::unordered_map<uint8_t *, BranchInfo>;
  using AddrSet = std::unordered_set<uint8_t *>;

  pid_t pid;
  int fd;
  Decoder decoder;
  BkptMap bkpt_map;
  AddrSet processed_branches; // branches that have already been handled
  AddrSet returning_calls; // calls that return (i.e. aren't noreturn, like exit(3)
  std::unordered_map<uint8_t *, unsigned> call_pend_counts;

  /* follow basic block until next branch */
  uint8_t *find_branch(uint8_t *pc, xed_decoded_inst_t& xedd, InstClass& iclass);

  static InstClass classify(xed_iclass_enum_t iclass);
  static BkptKind get_bkpt_kind(xed_iform_enum_t iform); 
  static bool iclass_is_jump(xed_iclass_enum_t iclass);
  static bool iclass_is_call(xed_iclass_enum_t iclass);
  static bool iclass_is_ret(xed_iclass_enum_t iclass);
  static uint8_t *get_dst(xed_decoded_inst_t& xedd, BkptKind iform, uint8_t *pc);
  static bool jmp_can_fallthrough(xed_iclass_enum_t xed_iclass);
  void write_inst_byte(uint8_t *pc, uint8_t opcode);
  
  void insert_bkpt(uint8_t *pc, BkptKind iform, unsigned instlen);
  bool has_bkpt(uint8_t *pc) const;
  void remove_bkpt(uint8_t *pc);
  void single_step_bkpt(uint8_t *pc);

  /* NOTE: Assumes call instruction *just* executed. */
  void set_retaddr(uint8_t *ra);

  static const char *bkpt_kind_to_str(BkptKind kind);

};
