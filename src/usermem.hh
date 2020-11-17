#pragma once

#include <unistd.h>
#include "tracee.hh"

template <typename T>
using user_ptr_t = T *;

class UserMemory {
public:
  UserMemory(const Tracee& tracee, size_t size);
  ~UserMemory();

  size_t size() const { return size_; }

  template <typename T>
  user_ptr_t<T> base() const { return reinterpret_cast<user_ptr_t<T>>(user_map); }

  template <typename T>
  user_ptr_t<T> begin() const { return base<T>(); }

  template <typename T>
  user_ptr_t<T> end() const { return reinterpret_cast<user_ptr_t<T>>(begin<char>() + size()); }

private:
  const Tracee& tracee;
  size_t size_;
  user_ptr_t<char> user_map;
};
