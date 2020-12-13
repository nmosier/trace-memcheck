#include <sstream>
#include "tracker.hh"

uint8_t *JccTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
    auto bkpt = Instruction::int3(addr);
    addr = info.writer(bkpt);
    info.rb(bkpt.pc(), [this] (auto addr) { this->handler(addr); });
    addr = info.writer(inst);
    return addr;
}

void JccTracker::handler(uint8_t *addr) {
  /* checksum flags */
  const auto flags = tracee.get_flags() & mask;
  cksum.add(addr, flags);
}

void StackTracker::pre_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  it->second->sp = tracee.get_sp();
}

constexpr bool FILL_SP_DEC = true;
constexpr bool FILL_SP_INC = true;

void StackTracker::post_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  const auto post_sp = static_cast<char *>(tracee.get_sp());
  const auto pre_sp = static_cast<char *>(it->second->sp);

  if (FILL_SP_DEC) {
    if (post_sp < pre_sp) {
      tracee.fill(fill(), post_sp - SHADOW_STACK_SIZE, pre_sp - SHADOW_STACK_SIZE);
    }
  }
  if (FILL_SP_INC) {
    if (pre_sp < post_sp) {
      tracee.fill(fill(), pre_sp - SHADOW_STACK_SIZE, post_sp - SHADOW_STACK_SIZE);
    }
  }

  // DEBUG
  cksum.add(addr, tracee.get_flags());
}

uint8_t *StackTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
  auto elem = std::make_shared<Elem>(inst);
  
  const auto pre_addr = addr;
  auto pre_bkpt = Instruction::int3(addr);
  addr = info.writer(pre_bkpt);
  addr = info.writer(inst);
  const auto post_addr = addr;
  auto post_bkpt = Instruction::int3(addr);
  addr = info.writer(post_bkpt);

  info.rb(pre_addr, pre_callback);
  info.rb(post_addr, post_callback);

  map.emplace(pre_addr, elem);
  map.emplace(post_addr, elem);
  
  return addr;
}

uint8_t *CallTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
  const auto iclass = inst.xed_iclass();
  const auto bkpt_addr = addr;
  auto bkpt = Instruction::int3(addr);
  addr = info.writer(bkpt);
  addr = info.writer(inst);

  if (iclass == XED_ICLASS_CALL_NEAR) {
    info.rb(bkpt_addr, call_callback);
  } else {
    assert(iclass == XED_ICLASS_RET_NEAR);
    info.rb(bkpt_addr, ret_callback);
  }

  return addr;
}

void CallTracker::call_handler(uint8_t *addr) const {
  /* mark [stack_begin, rsp - 8) as tainted */
  const auto sp = static_cast<char *>(tracee.get_sp());
  tracee.fill(fill(), sp - SHADOW_STACK_SIZE, sp - 8);

  /* DEBUG: checksum */
  cksum.add(addr, tracee.get_flags());
}

void CallTracker::ret_handler(uint8_t *addr) const {
  const auto sp = static_cast<char *>(tracee.get_sp());
  tracee.fill(fill(), sp - SHADOW_STACK_SIZE, sp); // TODO: is this ok that it doesn't taint the return address?

  /* DEBUG: Checksum */
  cksum.add(addr, tracee.get_flags());
}


StackTracker::Elem::Elem(const Instruction& inst): orig_addr(inst.pc())
{
  std::stringstream ss;
  ss << inst;
  inst_str = ss.str();
}

uint8_t *SyscallTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info,
			     const BkptCallback& pre_handler, const BkptCallback& post_handler)
{
  const auto pre_bkpt_addr = addr;
  auto pre_bkpt_inst = Instruction::int3(addr);
  addr = info.writer(pre_bkpt_inst);
  addr = info.writer(inst);
  const auto post_bkpt_addr = addr;
  auto post_bkpt_inst = Instruction::int3(addr);
  addr = info.writer(post_bkpt_inst);

  info.rb(pre_bkpt_addr, pre_handler);
  info.rb(post_bkpt_addr, post_handler);
  
  return addr;
}


