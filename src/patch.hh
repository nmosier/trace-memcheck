#pragma once

#include <unordered_map>
#include <memory>
#include "decoder.hh"
#include "tracee.hh"
#include "patch-fwd.hh"
#include "block.hh"
#include "block-pool.hh"
#include "block-term.hh"
#include "rsb.hh"

class Patcher {
public:
  Patcher(Tracee& tracee);

  void patch(uint8_t *root);
  void handle_bkpt(uint8_t *bkpt_addr);
  void start(uint8_t *root);
  void start(void);

private:
  //  using BlockMap = std::unordered_map<uint8_t *, Block *>;
  using BlockMap = std::unordered_map<uint8_t *, Block *>;
  using BkptCallback = Terminator::BkptCallback;
  using BkptMap = std::unordered_map<uint8_t *, BkptCallback>;

  static constexpr size_t block_pool_size = 0x100000;
  static constexpr size_t ptr_pool_size = 0x20000;
  static constexpr size_t rsb_size = 0x1000;
  
  Tracee& tracee;
  BlockMap block_map;
  BkptMap bkpt_map;
  BlockPool block_pool;
  PointerPool ptr_pool;
  ReturnStackBuffer rsb;

  Block& lookup_block_patch(uint8_t *addr);
  const BkptCallback& lookup_bkpt(uint8_t *addr) const;
  void jump_to_block(uint8_t *orig_addr);
  bool is_pool_addr(uint8_t *addr) const;
};
