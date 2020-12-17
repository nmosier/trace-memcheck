#pragma once

#include <unistd.h>
#include <sys/mman.h> // for PROT_*
#include "tracee.hh"

template <typename T>
using user_ptr_t = T *;

class UserMemory {
public:
  UserMemory(Tracee& tracee, size_t size, int prot); // prot: see mmap(2), mask of PROT_* flags
  ~UserMemory() {} // don't dealloc, since the tracee will die first so there's no point

  size_t size() const { return size_; }

  template <typename T>
  user_ptr_t<T> base() const { return reinterpret_cast<user_ptr_t<T>>(user_map); }

  template <typename T>
  user_ptr_t<T> begin() const { return base<T>(); }

  template <typename T>
  user_ptr_t<T> end() const { return reinterpret_cast<user_ptr_t<T>>(begin<char>() + size()); }

private:
  Tracee& tracee;
  size_t size_;
  user_ptr_t<char> user_map;
};

template <typename T>
class UserAllocator {
public:
  UserAllocator(T *begin, T *end): ptr_(begin), end_(end) {}

  auto rem() { return end_ - ptr_; }
  uint8_t *peek() const { return ptr_; }

  template <typename Size>
  uint8_t *alloc(Size size) {
    if (rem() < size) {
      abort();
    }
    const auto res = ptr_;
    ptr_ += size;
    return res;
  }
  
private:
  T *ptr_;
  T *end_;
};
