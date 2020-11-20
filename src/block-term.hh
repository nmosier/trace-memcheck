#pragma once

class Terminator;

#include <memory>
#include <list>
#include <type_traits>
#include "inst.hh"
#include "block-pool.hh"

class Terminator {
public:
  using InstVec = std::list<std::unique_ptr<Blob>>;
  using InstIt = InstVec::iterator;

  struct HandleBkptIface {
    std::function<uint8_t *(uint8_t *)> lb;
    std::function<void (uint8_t *)> pb;
    std::function<void (void)> ss;
    const Tracee& tracee;
  };
  
  uint8_t *addr() const { return addr_; }
  size_t size() const { return size_; }

  virtual void handle_bkpt(uint8_t *addr, const HandleBkptIface& iface) = 0;
  
protected:
  Terminator(BlockPool& block_pool, const Instruction& branch, size_t basesize,
	     const Tracee& tracee);

  size_t basesize() const { return buf_end() - buf_begin(); }
  uint8_t *baseaddr() const { return baseaddr_; }


  uint8_t *write(uint8_t *addr, const uint8_t *data, size_t count);

  template <typename I>
  uint8_t *write(uint8_t *addr, I i) {
    static_assert(std::is_integral<I>(), "require integral type");
    return write(addr, reinterpret_cast<const uint8_t *>(&i), sizeof(i));
  }
  uint8_t *write(const Blob& blob) { return write(blob.pc(), blob.data(), blob.size()); }
  void flush() const;
  
  const Instruction& orig_branch() const { return orig_branch_; }

  const Tracee& tracee() const { return tracee_; }
  
private:
  using Buf = std::vector<uint8_t>;
  uint8_t *addr_;
  uint8_t *baseaddr_;
  size_t size_;
  Instruction orig_branch_; // original branch
  Buf buf_;
  uint8_t *buf_begin_;
  uint8_t *buf_end_;
  const Tracee& tracee_;

  uint8_t *buf_begin() const { return buf_begin_; }
  uint8_t *buf_end() const { return buf_end_; }  
};

class IndirectTerminator: public Terminator {
public:
  IndirectTerminator(BlockPool& block_pool, const Instruction& branch, const Tracee& tracee);

  virtual void handle_bkpt(uint8_t *addr, const HandleBkptIface& iface) override;
  
private:
  uint8_t saved_byte_;
  uint8_t *branch_bkpt_;
  uint8_t *fallthru_bkpt_;
  
  static size_t basesize();

  /* initial:
   * BRANCH (bkpt)
   * BKPT (fallthru)
   */

  /* fallthru hit:
   * BRANCH (bkpt)
   * JMP <fallthru>
   */

  void init();

  void singlestep() const;
};

class DirectTerminator: public Terminator {
public:
  DirectTerminator(BlockPool& block_pool, const Instruction& branch, const Tracee& tracee);

  virtual void handle_bkpt(uint8_t *addr, const HandleBkptIface& iface) override;
  
private:
  Instruction branch_;
  Instruction fallthru_;
  uint8_t *branch_bkpt;
  
  /* initial instructions:
   * BRANCH [BKPT]
   * BKPT // fallthrough
   * BKPT // branch
   */

  /* if branch taken:
   * ORIG BRANCH
   * BKPT
   */

  /* if branch not taken:
   * BRANCH [BKPT]
   * JMP [NEXTBLOCK]
   * BKPT
   */

  /* if branch taken & not taken:
   * ORIG BRANCH
   * JMP NEXTBLOCK
   */

  /* Max instructions:
   * BRANCH
   * 
   */
  static size_t basesize();

  void init();
};
