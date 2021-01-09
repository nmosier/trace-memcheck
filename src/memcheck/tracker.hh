#pragma once

#include <cassert>
#include <string>
#include <vector>
#include <type_traits>
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

  class Tracker {};

  /* Requires functions:
   *  uint8_t *add_pre(uint8_t *, dbi::Instruction&, const TransformerInfo&);
   *  uint8_t *add_post(uint8_t *, dbi::Instruction&, const TransformerInfo&);
   *  bool match() const;
   */
  template <class Base>
  class Tracker_: public Base {
  public:
    template <typename... Args>
    Tracker_(Args&&... args): Base(std::forward<Args>(args)...) {}
    
    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info, bool& match_) {
      if ((match_ = this->match(inst))) {
	addr = this->add_pre(addr, inst, info);
	addr = info.writer(inst);
	addr = this->add_post(addr, inst, info);
      }
      return addr;
    }
  };

  /* Requires functions:
   *  bool incore() const;
   *  bool bkpt() const;
   *  uint8_t *add_incore_pre(uint8_t *, dbi::Instruction&, const TransformerInfo&);
   *  uint8_t *add_bkpt_pre(uint8_t *, dbi::Instruction&, const TransformerInfo&);
   *  uint8_t *add_incore_post(uint8_t *, dbi::Instruction&, const TransformerInfo&);
   *  uint8_t *add_bkpt_post(uint8_t *, dbi::Instruction&, const TransformerInfo&);
   */
  template <class Base>
  class IncoreTracker_: public Base {
  public:
    template <typename... Args>
    IncoreTracker_(Args&&... args): Base(std::forward<Args>(args)...) {}
    
  protected:
    uint8_t *add_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      if (this->incore()) {
	addr = this->add_incore_pre(addr, inst, info);
      }
      if (this->bkpt()) {
	addr = this->add_bkpt_pre(addr, inst, info);
      }
      return addr;
    }

    uint8_t *add_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      if (this->incore()) {
	addr = this->add_incore_post(addr, inst, info);
      }
      if (this->bkpt()) {
	addr = this->add_bkpt_post(addr, inst, info);
      }
      return addr;
    }
  };

  class IncoreTracker_Defaults {
  protected:
    uint8_t *add_incore_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      return addr;
    }
    uint8_t *add_bkpt_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      return addr;
    }
    uint8_t *add_incore_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      return addr;
    }
    uint8_t *add_bkpt_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      return addr;
    }
  };

  /* Requires signature:
   *  handler_pre(dbi::Tracee& tracee, uint8_t *addr;
   *  handler_post(dbi::Tracee& tracee, uint8_t *addr;
   *  void add_bkpt_pre_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
   *  void add_bkpt_post_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
   */
  template <class Base>
  class AddBkpt_: public Base {
  public:
    template <typename... Args>
    AddBkpt_(Args&&... args): Base(std::forward<Args>(args)...) {}
    
  protected:
    uint8_t *add_bkpt_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      this->add_bkpt_pre_action(addr, inst, info);
      auto bkpt = dbi::Instruction::int3(addr);
      addr = info.writer(bkpt);
      info.rb(bkpt.pc(), [this] (auto&&... args) { this->handler_pre(args...); });
      return addr;
    }
    uint8_t *add_bkpt_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      this->add_bkpt_post_action(addr, inst, info);
      auto bkpt = dbi::Instruction::int3(addr);
      addr = info.writer(bkpt);
      info.rb(bkpt.pc(), [this] (auto&&... args) { this->handler_post(args...); });
      return addr;
    }
  };

  class AddBkpt_Defaults {
  protected:
    void handler_pre(dbi::Tracee& tracee, uint8_t *addr) {}
    void handler_post(dbi::Tracee& tracee, uint8_t *addr) {}
    void add_bkpt_pre_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {}
    void add_bkpt_post_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {}
  };


  /* This defines the interface */
  class TrackerHalfBkpt_Base {
  public:
  protected:
    void handler(dbi::Tracee& tracee, uint8_t *addr) {}
    void add_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {}
  };

  /* This defines the functions built on top of the interface */
  template <class Base>
  class TrackerHalfBkpt_Derived: public Base {
    static_assert(std::is_base_of<TrackerHalfBkpt_Base, Base>(), "");
  public:
    template <typename... Args>
    TrackerHalfBkpt_Derived(Args&&... args): Base(std::forward<Args>(args)...) {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      this->add_action(addr, inst, info);
      auto bkpt = dbi::Instruction::int3(addr);
      addr = info.writer(bkpt);
      info.rb(bkpt.pc(), [this] (auto&&... args) { this->handler(args...); });
      return addr;
    }
  };

  using TrackerHalfBkpt_None = TrackerHalfBkpt_Derived<TrackerHalfBkpt_Base>;

  /* Additional requirements:
   * protected:
   *  MachineCode mc;
   */
  class TrackerHalfIncore_Base {
  public:
    void add_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {}
  };

  template <class Base>
  class TrackerHalfIncore_Derived: public Base {
    static_assert(std::is_base_of<TrackerHalfIncore_Base, Base>(), "");
  public:
    template <typename... Args>
    TrackerHalfIncore_Derived(Args&&... args): Base(std::forward<Args>(args)...) {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      this->add_action(addr, inst, info);
      this->mc.patch(addr);
      addr = info.writer(this->mc);
      return addr;
    }
  };

  class TrackerHalfIncore_None_Base: public TrackerHalfIncore_Base {
  public:
    template <typename... Args>
    TrackerHalfIncore_None_Base(Args&&... args):
      TrackerHalfIncore_Base(std::forward<Args>(args)...),
      mc(MC::Content(), MC::Relbrs())
    {}
  protected:
    using MC = dbi::MachineCode<0,0>;
    MC mc;
  };
  using TrackerHalfIncore_None = TrackerHalfIncore_Derived<TrackerHalfIncore_None_Base>;
  
  /* Additional requirements:
   *  bool incore() const;
   *  bool bkpt() const;
   */
  template <bool INCORE, bool BKPT, class Incore, class Bkpt>
  class TrackerHalf_Derived {
  public:
    TrackerHalf_Derived(const Incore& incore, const Bkpt& bkpt):
      incore(incore),
      bkpt(bkpt)
    {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      if (INCORE) {
	addr = incore.add(addr, inst, info);
      }
      if (BKPT) {
	addr = bkpt.add(addr, inst, info);
      }
      return addr;
    }
    
  private:
    Incore incore;
    Bkpt bkpt;
  };

  using TrackerHalf_None =
    TrackerHalf_Derived<false, false, TrackerHalfIncore_None, TrackerHalfBkpt_None>;

  template <bool PRE, bool POST, class Pre, class Post>
  class Tracker_Derived {
  public:
    Tracker_Derived(const Pre& pre, const Post& post): pre(pre), post(post) {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      if (PRE) {
	pre.add(addr, inst, info);
      }
      addr = info.writer(inst);
      if (POST) {
	post.add(addr, inst, info);
      }
      return addr;
    }
    
  private:
    Pre pre;
    Post post;
  };
  
  class Filler {
  public:
    Filler(const ThreadMap& thd_map): thd_map(thd_map) {}

    fill_t fill(pid_t pid) const { return thd_map.at(pid).fill; }
    fill_t fill(const dbi::Tracee& tracee) const { return fill(tracee.pid()); }

  private:
    const ThreadMap& thd_map;
  };

  class Checksummer {
  public:
    Checksummer(ThreadMap& thd_map): thd_map(thd_map) {}
    
  protected:
    const FlagChecksum& cksum(dbi::Tracee& tracee) const {
      return thd_map.at(tracee.pid()).bkpt_cksum;
    }
    FlagChecksum& cksum(dbi::Tracee& tracee) {
      return thd_map.at(tracee.pid()).bkpt_cksum;
    }

  private:
    ThreadMap& thd_map;
  };


  /* Required interface of Base:
   *  bool match();
   *  void pre(...); (BkptCallback)
   *  void post(...); (BkptCallback)
   */
  template <class Base>
  class SequencePoint_: public Base {
  public:
    template <typename... BaseArgs>
    SequencePoint_(const BkptCallback& pre_callback,
		   const BkptCallback& post_callback, BaseArgs&&... base_args):
      Base(std::forward<BaseArgs>(base_args)...),
      pre_callback(pre_callback),
      post_callback(post_callback)
    {}

    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info, bool& match_)
    {
      match_ = this->match(inst);

      if (match_) {
	auto pre_bkpt = dbi::Instruction::int3(addr);
	addr = info.writer(pre_bkpt);
	info.rb(pre_bkpt.pc(), [this] (auto&&... args) {
	  if (this->handler_pre(args...)) {
	    pre_callback(args...);
	  }
	});
      
	addr = info.writer(inst);

#if 0
	auto post_bkpt = dbi::Instruction::int3(addr);
	addr = info.writer(post_bkpt);
	info.rb(post_bkpt.pc(), [this] (auto&&... args) {
	  if (this->handler_post(args...)) {
	    post_callback(args...);
	  }
	});
#endif
	
      }
      
      return addr;
    }
  
  private:
    BkptCallback pre_callback;
    BkptCallback post_callback;
  };

  class SequencePoint_Defaults {
  public:
    /** @return Whether secondary tracee should be killed & reforked */
    bool kill() { return true; }

    /** Single-step through sequence point instruction (kill() called before this) */
    void step(dbi::Tracee& tracee);

    /** After single step and regeneration */
    void post(dbi::Tracee& tracee) {}
    
  protected:
    bool handler_pre(dbi::Tracee& tracee, uint8_t *addr) { return true; }
  };

  class StackTracker_Pre_Incore_Base: public TrackerHalfIncore_Base {
  public:
    StackTracker_Pre_Incore_Base(MemcheckVariables& vars):
      mc(MC::Content{0x48, 0x89, 0x25, 0x00, 0x00, 0x00, 0x00},
	 MC::Relbrs{MC::Relbr(0x03, 0x07, vars.prev_sp_ptr_ptr())}
	 )
    {}
  protected:
    using MC = dbi::MachineCode<0x07, 1>;
    MC mc;
  };
  using StackTracker_Pre_Incore = TrackerHalfIncore_Derived<StackTracker_Pre_Incore_Base>;

  class StackTracker_Post_Incore_Base: public TrackerHalfIncore_Base {
  public:
    StackTracker_Post_Incore_Base(MemcheckVariables& vars):
      mc(MC::Content{
	0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00, 0x9c, 0x50, 0x57, 0x51, 0x48, 0x8b,
	0x3d, 0x00, 0x00, 0x00, 0x00, 0x48, 0x8b, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x48,
	0x39, 0xcf, 0x7c, 0x03, 0x48, 0x87, 0xf9, 0x48, 0x29, 0xf9, 0x48, 0x8d, 0x7f,
	0x80, 0x8a, 0x05, 0x00, 0x00, 0x00, 0x00, 0xfc, 0xf3, 0xaa, 0x59, 0x5f, 0x58,
	0x9d, 0x48, 0x87, 0x25, 0x00, 0x00, 0x00, 0x00,
      },
	MC::Relbrs{
	  MC::Relbr(0x03, 0x07, vars.tmp_rsp_ptr_ptr()),
	  MC::Relbr(0x0e, 0x12, vars.prev_sp_ptr_ptr()),
	  MC::Relbr(0x15, 0x19, vars.tmp_rsp_ptr_ptr()),
	  MC::Relbr(0x2a, 0x2e, vars.fill_ptr_ptr()),
	  MC::Relbr(0x38, 0x3c, vars.tmp_rsp_ptr_ptr())
	}
	)
    {}
  protected:
    using MC = dbi::MachineCode<0x3c, 5>;
    MC mc;
  };
  using StackTracker_Post_Incore = TrackerHalfIncore_Derived<StackTracker_Post_Incore_Base>;

  class StackTracker_Bkpt_Info {
  public:
    struct Elem {
      uint8_t *orig_addr;
      std::string inst_str;
      void *sp;
    
      Elem(const dbi::Instruction& inst);
    };
    using ElemPtr = std::shared_ptr<Elem>;
    using Map = std::unordered_map<uint8_t *, std::shared_ptr<Elem>>;

    StackTracker_Bkpt_Info(ElemPtr& tmp_elem, Map& map, const MemcheckVariables& vars):
      tmp_elem(tmp_elem),
      map(map),
      prev_sp_ptr_ptr(vars.prev_sp_ptr_ptr())
    {}

    ElemPtr tmp_elem;
    Map map;
    uint64_t ** const * prev_sp_ptr_ptr;
  };
  
  class StackTracker_Pre_Bkpt_Base: public TrackerHalfBkpt_Base {
  public:
    StackTracker_Pre_Bkpt_Base(StackTracker_Bkpt_Info& info): i(info) {}

    void add_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      i.tmp_elem = std::make_shared<StackTracker_Bkpt_Info::Elem>(inst);
      i.map.emplace(addr, i.tmp_elem);      
    }
    
  private:
    StackTracker_Bkpt_Info& i;
  };
  using StackTracker_Pre_Bkpt = TrackerHalfBkpt_Derived<StackTracker_Pre_Bkpt_Base>;

  class StackTracker_Post_Bkpt_Base: public TrackerHalfBkpt_Base {
  public:
    StackTracker_Post_Bkpt_Base(StackTracker_Bkpt_Info& info): i(info) {}

    void add_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      i.map.emplace(addr, i.tmp_elem);
    }
    
  private:
    StackTracker_Bkpt_Info& i;
  };
  using StackTracker_Post_Bkpt = TrackerHalfBkpt_Derived<StackTracker_Post_Bkpt_Base>;
  
  using StackTracker_Pre = TrackerHalf_Derived<STACK_TRACKER_INCORE, STACK_TRACKER_BKPT,
					       StackTracker_Pre_Incore, StackTracker_Pre_Bkpt>;
  using StackTracker_Post = TrackerHalf_Derived<STACK_TRACKER_INCORE, STACK_TRACKER_BKPT,
						StackTracker_Post_Incore, StackTracker_Post_Bkpt>;
  using StackTracker__ = Tracker_Derived<true, true, StackTracker_Pre, StackTracker_Post>;

  class StackTracker_: public Filler {
  public:
    StackTracker_(const ThreadMap& thd_map, MemcheckVariables& vars);
  
  protected:
    static bool match(const dbi::Instruction& inst);
    
    bool incore() const { return STACK_TRACKER_INCORE; }
    bool bkpt() const { return STACK_TRACKER_BKPT; }
    
    void add_bkpt_pre_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      tmp_elem = std::make_shared<Elem>(inst);
      map.emplace(addr, tmp_elem);      
    }
    
    void add_bkpt_post_action(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      map.emplace(addr, tmp_elem);
    }
    
    uint8_t *add_incore_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_incore_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);

    void handler_pre(dbi::Tracee& tracee, uint8_t *addr);
    void handler_post(dbi::Tracee& tracee, uint8_t *addr);
    
  private:
    // TODO: Can be optimized.
    struct Elem {
      uint8_t *orig_addr;
      std::string inst_str;
      void *sp;
    
      Elem(const dbi::Instruction& inst);
    };
    using Map = std::unordered_map<uint8_t *, std::shared_ptr<Elem>>;

    Map map;
    std::shared_ptr<Elem> tmp_elem;
    uint64_t ** const * prev_sp_ptr_ptr;

    using PreMC = dbi::MachineCode<0x07, 1>;
    PreMC pre_mc;

    using PostMC = dbi::MachineCode<0x3c, 5>;
    PostMC post_mc;
  };

  using StackTracker = Tracker_<IncoreTracker_<AddBkpt_<StackTracker_>>>;

  class SyscallTracker_: public SequencePoint_Defaults {
  public:
    SyscallTracker_(State& taint_state, PageSet& page_set, dbi::SyscallArgs& syscall_args,
		    Memcheck& memcheck):
      taint_state(taint_state),
      page_set(page_set),
      syscall_args(syscall_args),
      memcheck(memcheck)
    {}

    void init(const Syscaller& sys) { this->sys = sys; }
    void check(dbi::Tracee& tracee);

    std::string desc() const {
      std::stringstream ss;
      ss << "syscall ";
      ss << syscall_args.no();
      return ss.str();
    }

    void step(dbi::Tracee& tracee);
    
    bool post(dbi::Tracee& tracee);

  protected:
    static bool match(const dbi::Instruction& inst) {
      return inst.xed_iclass() == XED_ICLASS_SYSCALL;
    }
    bool handler_pre(dbi::Tracee& tracee, uint8_t *addr);
    
  private:
    State& taint_state;
    PageSet& page_set;
    dbi::SyscallArgs& syscall_args;
    Memcheck& memcheck;
    void *brk = nullptr;
    Syscaller sys;

    static bool is_seq_pt(dbi::Syscall no);
  };
  using SyscallTracker = SequencePoint_<SyscallTracker_>;
  
  class CallTracker_: public Filler, public AddBkpt_Defaults {
  public:
    CallTracker_(const ThreadMap& thd_map, MemcheckVariables& vars);
    uint8_t *add(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);

  protected:
    static bool match(const dbi::Instruction& inst) {
      return inst.xed_iclass() == XED_ICLASS_CALL_NEAR;
    }
    
    bool incore() const { return CALL_TRACKER_INCORE; }
    bool bkpt() const { return CALL_TRACKER_BKPT; }

    uint8_t *add_incore_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_incore_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      return addr;
    }
    
    void handler_pre(dbi::Tracee& tracee, uint8_t *addr);
    void handler_post(dbi::Tracee& tracee, uint8_t *addr) {}
    
  private:
    using MC = dbi::MachineCode<0x2e, 4>;
    MC mc;
  };
  using CallTracker = Tracker_<IncoreTracker_<AddBkpt_<CallTracker_>>>;

  class RetTracker_: public Filler, public AddBkpt_Defaults {
  public:
    RetTracker_(const ThreadMap& thd_map, MemcheckVariables& vars);

  protected:
    static bool match(const dbi::Instruction& inst) {
      return inst.xed_iclass() == XED_ICLASS_RET_NEAR;
    }
    
    bool incore() const { return RET_TRACKER_INCORE; }
    bool bkpt() const { return RET_TRACKER_BKPT; }

    uint8_t *add_incore_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_incore_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      return addr;
    }
    
    void handler_pre(dbi::Tracee& tracee, uint8_t *addr);

  private:
    using MC = dbi::MachineCode<0x2e, 4>;
    MC mc;
  };
  using RetTracker = Tracker_<IncoreTracker_<AddBkpt_<RetTracker_>>>;
  

  class JccTracker_: public Checksummer, public AddBkpt_Defaults {
  public:
    JccTracker_(ThreadMap& thd_map, MemcheckVariables& vars):
      Checksummer(thd_map),
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

  protected:
    static bool match(const dbi::Instruction& inst);
    
    bool incore() const { return JCC_TRACKER_INCORE; }
    bool bkpt() const { return JCC_TRACKER_BKPT; }

    uint8_t *add_incore_pre(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info);
    uint8_t *add_incore_post(uint8_t *addr, dbi::Instruction& inst, const TransformerInfo& info) {
      return addr;
    }

    void handler_pre(dbi::Tracee& tracee, uint8_t *addr);
    
  private:
    using MC = dbi::MachineCode<0x23, 4>;
    uint32_t * const *cksum_ptr_ptr;
    MC post_code;  
  };
  using JccTracker = Tracker_<IncoreTracker_<AddBkpt_<JccTracker_>>>;

  class LockTracker_: public SequencePoint_Defaults {
  public:
    void check(dbi::Tracee& tracee);
    static const char *desc() { return "lock"; }

  protected:
    bool match(const dbi::Instruction& inst) const { return inst.data()[0] == LOCK_PREFIX; }
    
  private:
    static constexpr uint8_t LOCK_PREFIX = 0xf0;
  };
  using LockTracker = SequencePoint_<LockTracker_>;

  class RTMTracker_: public SequencePoint_Defaults {
  public:
    void check(dbi::Tracee& tracee) {}
    static const char *desc() { return "rtm"; }

  protected:
    bool match(const dbi::Instruction& inst) const;
  };
  using RTMTracker = SequencePoint_<RTMTracker_>;

  class RDTSCTracker_: public Tracker, public SequencePoint_Defaults {
  public:
    RDTSCTracker_(): Tracker() {}

    void check(dbi::Tracee& tracee) {}
    static const char *desc() { return "rdtsc"; }
  
  protected:
    bool match(const dbi::Instruction& inst) const { return inst.xed_iclass() == XED_ICLASS_RDTSC; }
    bool handler_pre(dbi::Tracee& tracee, uint8_t *addr) {
      std::clog << "RDTSC\n";
      return true;
    }
  };

  using RDTSCTracker = SequencePoint_<RDTSCTracker_>;

  class SharedMemSeqPt: public SequencePoint_Defaults {
  public:
    SharedMemSeqPt(Memcheck& memcheck, State& taint_state, const Syscaller& sys):
      memcheck(memcheck), taint_state(taint_state), sys(sys) {}

    void check(dbi::Tracee& tracee);
    static const char *desc() { return "shared_mem"; }
    void step(dbi::Tracee& tracee);
    
  private:
    Memcheck& memcheck;
    State& taint_state;
    Syscaller sys;

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
