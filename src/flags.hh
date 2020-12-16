#pragma once

#include <iterator>

#define FLAGS(m)				\
  m(CF, 0x0001)					\
  m(PF, 0x0004)					\
  m(AF, 0x0010)					\
  m(ZF, 0x0040)					\
  m(SF, 0x0080)					\
  m(TF, 0x0100)					\
  m(IF, 0x0200)					\
  m(DF, 0x0400)					\
  m(OF, 0x0800)					\
  // END FLAGS

#define DEF_FLAG(name, val) name = val,
enum class Flag {
  FLAGS(DEF_FLAG)
};
#undef DEF_FLAG


constexpr uint32_t operator|(Flag l, Flag r) {
  return static_cast<uint32_t>(l) | static_cast<uint32_t>(r);
}

constexpr uint32_t operator|(uint32_t l, Flag r) {
  return l | static_cast<uint32_t>(r);
}

constexpr uint32_t operator|(Flag l, uint32_t r) {
  return r | l;
}

constexpr uint32_t status_flags =
  Flag::CF | Flag::OF | Flag::SF | Flag::ZF | Flag::AF | Flag::PF;

constexpr const char *to_string(Flag f) {
#define STR_FLAG(name, ...) case Flag::name: return #name;
  switch (f) {
    FLAGS(STR_FLAG);
  default:
    return nullptr;
  }
#undef STR_FLAG
}

inline std::ostream& operator<<(std::ostream& os, Flag f) {
  const auto s = to_string(f);
  if (s != nullptr) {
    return os << s;
  } else {
    return os << "0x" << std::hex << static_cast<uint32_t>(f);
  }
}

class FlagSet {
public:
  using size_type = unsigned;
  class iterator {
  public:
    using difference_type = int;
    using value_type = Flag;
    using pointer = value_type;
    using reference = value_type;
    using iterator_category = std::forward_iterator_tag;
    
    constexpr iterator(): mask(0), idx(0) {}
  
    constexpr bool operator==(const iterator& other) const { return idx == other.idx; }
    constexpr bool operator!=(const iterator& other) const { return !(*this == other); }
    constexpr iterator& operator++() { ++idx; scan(); return *this; }
    constexpr iterator& operator++(int i) { return ++*this; }
    constexpr Flag operator*() const {
      assert((mask & (1 << idx)));
      return static_cast<Flag>(1 << idx);
    }
  
  private:
    uint32_t mask;
    static constexpr unsigned bits = sizeof(mask) * 8;
    unsigned idx;

    constexpr iterator(uint32_t mask, unsigned idx): mask(mask), idx(idx) { scan(); }
    static constexpr iterator make_begin(uint32_t mask) { return iterator(mask, 0); }
    static constexpr iterator make_end() { return iterator(0, bits); }
  
    constexpr void scan() {
      for (; idx < bits && (mask & (1 << idx)) == 0; ++idx) {}
    }

    friend FlagSet;
  };
  using const_iterator = iterator;

  constexpr FlagSet(): mask(0) {}
  constexpr FlagSet(uint32_t mask): mask(mask) {}

  constexpr iterator begin() const { return iterator::make_begin(mask); }
  constexpr iterator end() const { return iterator::make_end(); }
  constexpr bool empty() const { return mask == 0; }
  constexpr size_type size() const {
    size_t size = 0;
    for (auto it = begin(); it != end(); ++it, ++size) {}
    return size;
  }
  constexpr void clear() { mask = 0; }
  
private:
  uint32_t mask;
};

