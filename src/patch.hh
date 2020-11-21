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
  void start(uint8_t *root);
  void start(void);

  /* addr can be anywhere within block */
  Block *lookup_block_bkpt(uint8_t *pool_addr) const;
  
private:
  //  using BlockMap = std::unordered_map<uint8_t *, Block *>;
  using BlockMap = std::map<uint8_t *, Block *>;

  static constexpr size_t block_pool_size = 0x100000;
  static constexpr size_t ptr_pool_size = 0x10000;
  
  Tracee& tracee;
  BlockMap block_map;
  BlockMap pool2block_map;
  BlockPool block_pool;
  PointerPool ptr_pool;

  Block& lookup_block_patch(uint8_t *addr);
  void jump_to_block(uint8_t *orig_addr);
  bool is_pool_addr(uint8_t *addr) const;
};
