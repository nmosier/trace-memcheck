#pragma once

#include <functional>

namespace dbi {

  using BkptCallback = std::function<void(Tracee& tracee, uint8_t *)>;
  using RegisterBkpt = std::function<void(uint8_t *, const BkptCallback&)>;
  using LookupBlock = std::function<uint8_t *(uint8_t *)>;
  using TryLookupBlock = std::function<uint8_t *(uint8_t *)>;
  using ProbeBlock = std::function<uint8_t *(uint8_t *)>; // returns nullptr if block not present
  using UnregisterBkpt = std::function<void(uint8_t *)>;
  using InsertBlock = std::function<void (uint8_t *, Block *)>;
  using Writer = std::function<uint8_t *(Blob&)>;
  
}
