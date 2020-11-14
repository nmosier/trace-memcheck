#pragma once

#include <map>
#include <memory>
#include "decoder.hh"
#include "tracee.hh"
#include "patch-fwd.hh"
#include "block.hh"
#include "block-pool.hh"

class Patcher {
public:
  Patcher(Tracee& tracee);

  void patch(uint8_t *root);
  void handle_bkpt(uint8_t *bkpt_addr);
  void jump_to_block(uint8_t *orig_addr);
  

private:
  //  using BlockMap = std::unordered_map<uint8_t *, Block *>;
  using BlockMap = std::map<uint8_t *, Block *>;
  enum class BranchKind {
    DIR,      // direct branch: JMP, CALL
    DIR_COND, // direct conditional branch: J{CC}
    IND,      // indirect branch: JMP, CALL, RET
  };
  enum class BkptKind {
    RET,
    COND,
    IND,
  };

  static constexpr size_t block_pool_size = 0x100000;
  Tracee& tracee;
  BlockMap block_map;
  BlockPool block_pool;

  template <typename OutputIt>
  void patch_one(uint8_t *pc, OutputIt output_it);

  /* addr can be anywhere within block */
  Block *lookup_block(uint8_t *addr) const;
};
