#pragma once

class Terminator;

#include <memory>
#include <list>
#include "inst.hh"

class Terminator {
public:
  using InstVec = std::list<std::unique_ptr<Blob>>;
  using InstIt = InstVec::iterator;
  
  const InstVec& insts() const { return insts_; }
  uint8_t *addr() const { return addr_; }
  size_t size() const { return size_; }
  
protected:
  Terminator(uint8_t *addr, const Instruction& branch, size_t basesize);

  template <typename... Args>
  void add_inst(Args&&... args);

  InstIt insts_begin() const { return insts_begin_; }
  InstIt insts_end() const { return insts_end_; }

  uint8_t *addr_before(InstIt it) { return (*std::next(it, -1))->after_pc(); }

  template <class Functor>
  InstIt insert(InstIt it, Functor fn) {
    return insert(std::make_unique(fn(addr_before(it))));
  }
  
  InstIt insert(InstIt it, std::unique_ptr<Blob> blob); // erases range [it, insts_end) and inserts
  InstIt erase(InstIt it); // erases range [it, insts_end)

private:
  uint8_t *addr_;
  size_t size_;
  InstVec insts_;
  InstIt insts_begin_; // begin point for subclass
  InstIt insts_end_;   // end point for subclass
  Instruction orig_branch_; // original branch
};

class IndirectTerminator: public Terminator {
public:
  IndirectTerminator(uint8_t *addr, const Instruction& branch);
private:
};

class DirectTerminator: public Terminator {
public:
  DirectTerminator(uint8_t *addr, const Instruction& branch);
protected:
private:
};
