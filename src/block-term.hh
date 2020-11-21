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
  using LookupBlock = std::function<uint8_t *(uint8_t *)>;
  
  struct HandleBkptIface {
    LookupBlock lb;
    std::function<void (uint8_t *)> pb;
    std::function<void (void)> ss;
    const Tracee& tracee;
  };
  
  uint8_t *addr() const { return addr_; }
  size_t size() const { return size_; }

  virtual void handle_bkpt(uint8_t *addr, const HandleBkptIface& iface) { abort(); }

  static Terminator *Create(BlockPool& block_pool, const Instruction& branch, const Tracee& trace,
			    LookupBlock lb);
  
protected:
  Terminator(BlockPool& block_pool, size_t size, const Tracee& tracee);

  uint8_t *write(uint8_t *addr, const uint8_t *data, size_t count);
  uint8_t *write(const Blob& blob) { return write(blob.pc(), blob.data(), blob.size()); }
  uint8_t *write(uint8_t *addr, uint8_t byte) { return write_i<uint8_t>(addr, byte); }
  uint8_t *write_bkpt(uint8_t *addr) { return write(addr, 0xcc); }
  
  void flush() const;
  
  const Tracee& tracee() const { return tracee_; }
  
private:
  using Buf = std::vector<uint8_t>;
  uint8_t *addr_;
  size_t size_;
  Buf buf_;
  const Tracee& tracee_;

  template <typename I>  
  uint8_t *write_i(uint8_t *addr, I i) {
    static_assert(std::is_integral<I>(), "require integral type");
    return write(addr, reinterpret_cast<const uint8_t *>(&i), sizeof(i));
  }
};

class DirCallTerminator: public Terminator {
public:
  DirCallTerminator(BlockPool& block_pool, const Instruction& call, const Tracee& tracee,
		    LookupBlock lb);
private:
  static constexpr size_t DIR_CALL_SIZE =
    Instruction::push_mem_len + Instruction::jmp_relbrd_len + sizeof(void *);
};

class DirJmpTerminator: public Terminator {
public:
  DirJmpTerminator(BlockPool& block_pool, const Instruction& jmp, const Tracee& tracee,
		   LookupBlock lb);
private:
  static constexpr size_t DIR_JMP_SIZE = Instruction::jmp_relbrd_len;
};

class DirJccTerminator: public Terminator {
public:
  DirJccTerminator(BlockPool& block_pool, const Instruction& jcc, const Tracee& tracee);
  virtual void handle_bkpt(uint8_t *addr, const HandleBkptIface& iface) override;
private:
  static constexpr size_t DIR_JCC_SIZE =
    Instruction::jcc_relbrd_len + Instruction::jmp_relbrd_len + Instruction::int3_len;
  Instruction jcc_inst;
  uint8_t *orig_dst;
  uint8_t *orig_fallthru;
  uint8_t *jcc_bkpt_addr;
  uint8_t *fallthru_bkpt_addr;
};

class IndTerminator: public Terminator {
public:
  IndTerminator(BlockPool& block_pool, const Instruction& branch, const Tracee& tracee);
  virtual void handle_bkpt(uint8_t *addr, const HandleBkptIface& iface) override;
private:
  static constexpr size_t IND_SIZE = Instruction::int3_len;
  uint8_t *orig_branch_addr;
};
