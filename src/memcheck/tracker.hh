#pragma once

#include <cassert>
#include <string>
#include <vector>
#include "dbi/block-term.hh"
#include "dbi/patch.hh"
#include "dbi/syscall-args.hh"
#include "pageset.hh"
#include "cksum.hh"
#include "flags.hh"
#include "vars.hh"
#include "types.hh"

namespace memcheck {
  class Memcheck;

  class Tracker {
  public:
    using BkptCallback = dbi::Terminator::BkptCallback;
    using TransformerInfo = dbi::Patcher::TransformerInfo;

    Tracker(dbi::Tracee& tracee): tracee(tracee) {}
    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) { abort(); }

  protected:
    dbi::Tracee& tracee;
  };

  class Filler {
  public:
    Filler(fill_ptr_t fill_ptr): fill_ptr_(fill_ptr) {}

    fill_t fill() const { return *fill_ptr_; }
  
  private:
    fill_ptr_t fill_ptr_;
  };

  class Checksummer {
  public:
    Checksummer(FlagChecksum& cksum): cksum(cksum) {}
  protected:
    FlagChecksum& cksum;
  };

  class SequencePoint {
  public:
    using Callback = dbi::Terminator::BkptCallback;

    SequencePoint(State& taint_state, const Callback& pre_callback, const Callback& post_callback):
      taint_state(taint_state), pre_callback(pre_callback), post_callback(post_callback) {}

  protected:
    State& taint_state;
    Callback pre_callback;
    Callback post_callback;

    template <typename Func>
    void add_pre(uint8_t *addr, const Tracker::TransformerInfo& info, Func func) {
      info.rb(addr, [this, func] (const auto addr) {
	func(addr);
	pre_callback(addr);
      });
    }

    template <typename Func>
    void add_post(uint8_t *addr, const Tracker::TransformerInfo& info, Func func) {
      info.rb(addr, [this, func] (const auto addr) {
	func(addr);
	post_callback(addr);
      });
    }
  };

  template <class Base>
  class SequencePoint_: public Base {
  public:
    using Callback = dbi::Terminator::BkptCallback;

    template <typename... BaseArgs>
    SequencePoint_(State& taint_state, const Callback& pre_callback, const Callback& post_callback,
		   BaseArgs&&... base_args):
      Base(base_args...),
      taint_state(taint_state), pre_callback(pre_callback), post_callback(post_callback)
    {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const dbi::Patcher::TransformerInfo& info,
		 bool match_)
    {
      match_ = this->match(inst);

      if (match_) {
	auto pre_bkpt = dbi::Instruction::int3(addr);
	addr = info.writer(pre_bkpt);
	info.rb(pre_bkpt.pc(), [this] (const auto addr) {
	  this->pre(addr);
	  pre_callback(addr);
	});
      
	addr = info.writer(inst);
      
	auto post_bkpt = dbi::Instruction::int3(addr);
	addr = info.writer(post_bkpt);
	info.rb(post_bkpt.pc(), [this] (const auto addr) {
	  this->post(addr);
	  post_callback(addr);
	});
      }
    
      return addr;
    }
  
  private:
    State& taint_state;
    Callback pre_callback;
    Callback post_callback;
  };

  class StackTracker: public Tracker, public Filler {
  public:
    StackTracker(dbi::Tracee& tracee, fill_ptr_t fill_ptr, MemcheckVariables& vars);
  
    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
  
  private:
    // TODO: Can be optimized.
    struct Elem {
      uint8_t *orig_addr;
      std::string inst_str;
      void *sp;
    
      Elem(const dbi::Instruction& inst);
    };
    using Map = std::unordered_map<uint8_t *, std::shared_ptr<Elem>>;
    using BkptCallback = dbi::Terminator::BkptCallback;

    Map map;
    std::shared_ptr<Elem> tmp_elem;
    uint64_t ** const * prev_sp_ptr_ptr;

    using PreMC = dbi::MachineCode<0x07, 1>;
    PreMC pre_mc;

    using PostMC = dbi::MachineCode<0x3c, 5>;
    PostMC post_mc;
  
    const BkptCallback pre_callback = [this] (auto... args) { return pre_handler(args...); };
    const BkptCallback post_callback = [this] (auto... args) { return post_handler(args...); };

    void pre_handler(uint8_t *addr);
    void post_handler(uint8_t *addr);

    uint8_t *add_bkpt_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_bkpt_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_incore_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_incore_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
  };

  class SyscallTracker: public Tracker, public SequencePoint {
  public:
    SyscallTracker(dbi::Tracee& tracee, const SequencePoint& sequence_point, PageSet& page_set,
		   dbi::SyscallArgs& syscall_args, Memcheck& memcheck):
      Tracker(tracee), SequencePoint(sequence_point), page_set(page_set),
      syscall_args(syscall_args), memcheck(memcheck) {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const dbi::Patcher::TransformerInfo& info);
    void check();
  
  private:
    PageSet& page_set;
    dbi::SyscallArgs& syscall_args;
    Memcheck& memcheck;
    void *brk = nullptr;

    void pre(uint8_t *addr);
    void post(uint8_t *addr);
  };

  class CallTracker: public Tracker, public Filler {
  public:
    CallTracker(dbi::Tracee& tracee, fill_ptr_t fill_ptr, MemcheckVariables& vars);
    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
  private:
    using MC = dbi::MachineCode<0x2e, 4>;
    MC mc;

    uint8_t *add_bkpt(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_incore(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
  
    void handler(uint8_t *addr);
  };

  class RetTracker: public Tracker, public Filler {
  public:
    RetTracker(dbi::Tracee& tracee, fill_ptr_t fill_ptr, MemcheckVariables& vars);
    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
  private:
    using MC = dbi::MachineCode<0x2e, 4>;
    MC mc;
  
    void handler(uint8_t *addr);
    uint8_t *add_bkpt(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_incore(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
  };


  class JccTracker: public Tracker, public Checksummer {
  public:
    JccTracker(dbi::Tracee& tracee, FlagChecksum& cksum, MemcheckVariables& vars):
      Tracker(tracee),
      Checksummer(cksum),
      cksum_ptr_ptr(vars.jcc_cksum_ptr_ptr()),
      post_code(MC::Content {
	0x48, 0x87, 0x05, 0x00, 0x00, 0x00, 0x00, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00,
	0x9c, 0xd1, 0xc8, 0x03, 0x04, 0x24, 0x9d, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00,
	0x48, 0x87, 0x05, 0x00, 0x00, 0x00, 0x00
      },
	MC::Relbrs {
	  MC::Relbr {0x03, 0x07, cksum_ptr_ptr},
	  MC::Relbr {0x0a, 0x0e, vars.tmp_rsp_ptr_ptr()},
	  MC::Relbr {0x18, 0x1c, vars.tmp_rsp_ptr_ptr()},
	  MC::Relbr {0x1f, 0x23, cksum_ptr_ptr},
	}
	)
    {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);

  private:
    using MC = dbi::MachineCode<0x23, 4>;
    uint32_t * const *cksum_ptr_ptr;
    MC post_code;
  
    void handler(uint8_t *addr);

    uint8_t *add_incore(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_bkpt(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
  };

  class LockTracker: public Tracker, public SequencePoint {
  public:
    template <typename SequencePointArg>
    LockTracker(dbi::Tracee& tracee, const SequencePointArg& sequence_point):
      Tracker(tracee), SequencePoint(sequence_point) {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info, bool& match);
    void check();
  
  private:
    static constexpr uint8_t LOCK_PREFIX = 0xf0;
  };

  class RTMTracker: public Tracker, public SequencePoint {
  public:
    template <typename SequencePointArg>
    RTMTracker(dbi::Tracee& tracee, const SequencePointArg& sequence_point):
      Tracker(tracee), SequencePoint(sequence_point) {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info, bool& match);
    void check() {}

  private:
    bool match(const dbi::Instruction& inst) const;
  };

  class RDTSCTracker_: public Tracker {
  public:
    RDTSCTracker_(dbi::Tracee& tracee): Tracker(tracee) {}

    void check() {}
  
  protected:
    bool match(const dbi::Instruction& inst) const { return inst.xed_iclass() == XED_ICLASS_RDTSC; }
    void pre(uint8_t *addr) {
      std::clog << "RDTSC\n";
    }
    void post(uint8_t *addr) {}
  };

  using RDTSCTracker = SequencePoint_<RDTSCTracker_>;

  class SharedMemSeqPt {
  public:
    SharedMemSeqPt(dbi::Tracee& tracee, Memcheck& memcheck, State& taint_state):
      tracee(tracee), memcheck(memcheck), taint_state(taint_state) {}

    void check();
  
  private:
    dbi::Tracee& tracee;
    Memcheck& memcheck;
    State& taint_state;

    void read(xed_reg_enum_t reg) const;
    void write(xed_reg_enum_t reg);
    void read_write(xed_reg_enum_t reg) { read(reg); write(reg); }

    void read_flags(uint32_t mask) const;
    void read_flags(Flag f) const { read_flags(static_cast<uint32_t>(f)); }
    void write_flags(uint32_t mask);
    void write_flags(Flag f) { write_flags(static_cast<uint32_t>(f)); }
    void taint_flags(uint32_t mask);
    void taint_flags(Flag f) { taint_flags(static_cast<uint32_t>(f)); }

    static uint64_t mask(xed_reg_enum_t reg, bool read);
    static uint64_t mask_read(xed_reg_enum_t reg) { return mask(reg, true); }
    static uint64_t mask_write(xed_reg_enum_t reg) { return mask(reg, false); }
  };

}
