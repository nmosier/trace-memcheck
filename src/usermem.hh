#pragma once

#include <unistd.h>
#include <sys/mman.h>
#include <cassert>
#include "tracee.hh"

class UserMemory {
public:
  UserMemory(): user_map(MAP_FAILED) {}

  template <typename... Args>
  UserMemory(Args&&... args) { open(args...); }

  bool good() const { return user_map != MAP_FAILED; }
  operator bool() const { return good(); }

  void open(Tracee& tracee, size_t size, int prot);
  void close() {} // TODO: Only should close under some circumstances
  
  size_t size() const { return size_; }

  template <typename T>
  T *base() const { return reinterpret_cast<T *>(user_map); }

  template <typename T>
  T *begin() const { return base<T>(); }

  template <typename T>
  T *end() const { return reinterpret_cast<T *>(begin<char>() + size()); }

private:
  size_t size_;
  void *user_map = MAP_FAILED;
};

template <typename T>
class UserAllocator {
public:
  UserAllocator(): ptr_(nullptr) {}

  template <typename... Args>
  UserAllocator(Args&&... args) { open(args...); }

  bool good() const { return ptr_ != nullptr; }
  operator bool() const { return good(); }

  void open(T *begin, T *end) {
    ptr_ = begin;
    end_ = end;
  }

  void open(UserMemory& mem) {
    assert(mem);
    open(mem.begin<T>(), mem.end<T>());
  }
  
  constexpr size_t rem() const { return end_ - ptr_; }
  constexpr T *peek() const { return ptr_; }
  constexpr T *end() const { return end_; }

  constexpr T *alloc() { return alloc(1U); }

  template <typename Size>
  constexpr T *alloc(Size size) {
    if (rem() < size) {
      std::abort();
    }
    const auto res = ptr_;
    ptr_ += size;
    return res;
  }
  
private:
  T *ptr_;
  T *end_;
};
