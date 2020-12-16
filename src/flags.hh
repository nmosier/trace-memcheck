#pragma once

enum class Flag {
  CF = 0x0001,
  PF = 0x0004,
  AF = 0x0010,
  ZF = 0x0040,
  SF = 0x0080,
  TF = 0x0100,
  IF = 0x0200,
  DF = 0x0400,
  OF = 0x0800,
  // TODO: Add other flags?
};


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
