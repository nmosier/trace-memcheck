#include <sstream>
#include "tracker.hh"
#include "memcheck.hh"

uint8_t *JccTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info) {
    auto bkpt = Instruction::int3(addr);
    addr = info.writer(bkpt);
    info.rb(bkpt.pc(), [this] (auto addr) { this->handler(addr); });
    addr = info.writer(inst);
    return addr;
}

void JccTracker::handler(uint8_t *addr) {
  /* checksum flags */
  std::stringstream ss;
  ss << "rdx = " << std::hex << tracee.get_regs().rdx;
  const auto rdi = tracee.get_regs().rdi;
  ss << ", rdi = " << (void *) rdi;
  if (rdi == 0x626dda) {
    ss << "'" << tracee.string((const char *) rdi) << "'";
  }
  cksum.add(addr, tracee, ss.str());
}

void StackTracker::pre_handler(uint8_t *addr) {
  const auto it = map.find(addr);
  assert(it != map.end());
  it->second->sp = tracee.get_sp();
}

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

  if (FILL_CALL) {
    tracee.fill(fill(), sp - SHADOW_STACK_SIZE, sp - 8);
  }

  /* DEBUG: checksum */
  cksum.add(addr, tracee.get_flags());
}

void CallTracker::ret_handler(uint8_t *addr) const {
  const auto sp = static_cast<char *>(tracee.get_sp());

  if (FILL_CALL) {
    tracee.fill(fill(), sp - SHADOW_STACK_SIZE, sp); // TODO: is this ok that it doesn't taint the return address?
  }

  /* DEBUG: Checksum */
  cksum.add(addr, tracee.get_flags());
}


StackTracker::Elem::Elem(const Instruction& inst): orig_addr(inst.pc())
{
  std::stringstream ss;
  ss << inst;
  inst_str = ss.str();
}

uint8_t *SyscallTracker::add(uint8_t *addr, Instruction& inst, const Patcher::TransformerInfo& info)
{
  auto pre_bkpt = Instruction::int3(addr);
  addr = info.writer(pre_bkpt);
  addr = info.writer(inst);
  auto post_bkpt = Instruction::int3(addr);
  addr = info.writer(post_bkpt);

  add_pre(pre_bkpt.pc(), info, [] (const auto addr) {});
  add_post(post_bkpt.pc(), info, [] (const auto addr) {});
  
  return addr;
}


uint8_t *LockTracker::add(uint8_t *addr, Instruction& inst, const TransformerInfo& info,
			  bool& match) {
  if ((match = (inst.data()[0] == LOCK_PREFIX))) {
    auto pre_bkpt = Instruction::int3(addr);
    addr = info.writer(pre_bkpt);
    addr = info.writer(inst);
    auto post_bkpt = Instruction::int3(addr);
    addr = info.writer(post_bkpt);

    add_pre(pre_bkpt.pc(), info, [] (const auto addr) {});
    add_post(post_bkpt.pc(), info, [] (const auto addr) {});
  } 

  return addr;
}
