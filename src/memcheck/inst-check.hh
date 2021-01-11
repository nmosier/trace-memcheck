#pragma once

#include <cassert>

#include "dbi/tracee.hh"
#include "dbi/inst.hh"
#include "dbi/regs.hh"
#include "flags.hh"

namespace memcheck {

  class InstructionChecker {
  public:
    InstructionChecker() {}
    InstructionChecker(dbi::Tracee& tracee1, dbi::Tracee& tracee2) { init(tracee1, tracee2); }

    void init(dbi::Tracee& tracee1, dbi::Tracee& tracee2) {
      this->tracee1 = &tracee1;
      this->tracee2 = &tracee2;
      inst = dbi::Instruction(tracee1.get_pc(), tracee1);
      assert(tracee1.get_pc() == tracee2.get_pc());
      assert(inst.size() != 0);
    }
    
    bool check();
    void post();
    
  private:
    dbi::Tracee *tracee1 = nullptr;
    dbi::Tracee *tracee2 = nullptr;
    dbi::Instruction inst;

    bool read(xed_reg_enum_t reg);

    bool read_mem(void *ptr, unsigned size);
    bool read_mem(xed_reg_enum_t base, xed_reg_enum_t index, unsigned scale,
		  std::ptrdiff_t displacement, unsigned size);
    
    void write(xed_reg_enum_t reg);
    void write_mem(void *ptr, unsigned size);
    void write_mem(xed_reg_enum_t base, xed_reg_enum_t index, unsigned scale,
		   std::ptrdiff_t displacement, unsigned size);

    using XMMWidth = dbi::FPRegisters::XMM::Width;
    void write_xmm(xed_reg_enum_t reg, XMMWidth xmm_width);
    void write_xmm(xed_reg_enum_t reg, XMMWidth xmm_width) const;
    
    bool read_flags(uint32_t mask);
    bool read_flags(Flag f) { return read_flags(static_cast<uint32_t>(f)); }
    void write_flags(uint32_t mask);
    template <typename... Args>
    void write_flags(Flag f, Args&&... args) {
      write_flags(static_cast<uint32_t>(f), std::forward<Args>(args)...);
    }
    void taint_flags(uint32_t mask);
    void taint_flags(Flag f) { taint_flags(static_cast<uint32_t>(f)); }
    
    uint64_t mask(xed_reg_enum_t reg, bool read) const;
    uint64_t mask_read(xed_reg_enum_t reg) const { return mask(reg, true); }
    uint64_t mask_write(xed_reg_enum_t reg) const { return mask(reg, false); }
		  
    static unsigned width(xed_reg_enum_t reg) { return xed_get_register_width_bits(reg) / 8; }

    friend class SharedMemSeqPt; // TODO: remove
    friend class LockTracker_;
  };
  
}
