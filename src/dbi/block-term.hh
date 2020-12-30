#pragma once

namespace dbi {
  class Terminator;
  class Block;
}

#include <memory>
#include <list>
#include <type_traits>
#include "inst.hh"
#include "block-pool.hh"
#include "ptr-pool.hh"
#include "rsb.hh"
#include "tmp-mem.hh"

namespace dbi {

  class Terminator {
  public:
    using InstVec = std::list<std::unique_ptr<Blob>>;
    using InstIt = InstVec::iterator;
    using LookupBlock = std::function<uint8_t *(uint8_t *)>;
    using TryLookupBlock = std::function<uint8_t *(uint8_t *)>;
    using ProbeBlock = std::function<uint8_t *(uint8_t *)>; // returns nullptr if block not present
    using BkptCallback = std::function<void(Tracee& tracee, uint8_t *)>;
    using RegisterBkpt = std::function<void(uint8_t *, const BkptCallback&)>;
    using UnregisterBkpt = std::function<void(uint8_t *)>;
  
    static Terminator *Create(BlockPool& block_pool, PointerPool& ptr_pool, TmpMem& tmp_mem,
			      const Instruction& branch, Tracees& tracees, const LookupBlock& lb,
			      const ProbeBlock& pb, const RegisterBkpt& rb,
			      const ReturnStackBuffer& rsb, const Block& block);

    // handle breakpoint by single-stepping    
    void handle_bkpt_singlestep(Tracee& tracee); 

    // also return original PC after single-stepping
    void handle_bkpt_singlestep(Tracee& tracee, uint8_t *& orig_pc, uint8_t *& new_pc); 

  protected:
    Terminator(BlockPool& block_pool, size_t size, const Instruction& branch,
	       Tracees& tracees, const LookupBlock& lb);

    uint8_t *write(uint8_t *addr, const uint8_t *data, size_t count);
    uint8_t *write(const Blob& blob) {
      return write(blob.pc(), blob.data(), blob.size());
    }
    uint8_t *write(uint8_t *addr, uint8_t byte) {
      return write_i<uint8_t>(addr, byte);
    }
    uint8_t *write_bkpt(uint8_t *addr) { return write(addr, 0xcc); }

    void flush(Tracee& tracee);
    void flush(Tracees& tracees) {
      if (dirty_) {
	std::for_each(tracees.begin(), tracees.end(), [&] (auto& tracee) {
	  this->flush_always(tracee);
	});
	dirty_ = false;
      }
    }

    template <typename... Args>
    uint8_t *try_lookup_block(Args&&... args) { return lb_(args...); }

    template <typename... Args>
    uint8_t *lookup_block(Args&&... args) {
      const auto res = try_lookup_block(args...);
      assert(res != nullptr);
      return res;
    }

#if 0
    template <typename Derived>
    static BkptCallback make_callback(Derived *term,
				      void (Derived::*fn)(void)) {
      return [=] (Tracee& tracee, uint8_t *bkpt_addr) {
	(term->*fn)(tracee);
      };
    }
#endif

    uint8_t *addr() const { return addr_; }

    template <size_t N>
    static uint8_t *assign_addresses(const std::array<uint8_t, N>& lens,
				     std::array<uint8_t *, N>& addrs, uint8_t *addr);

  
  private:
    using Buf = std::vector<uint8_t>;
    uint8_t *addr_;
    size_t size_;
    Buf buf_;
    bool dirty_ = false; // whether buf is dirty
    const LookupBlock lb_;
    uint8_t *orig_branch_addr_;

    template <typename I>  
    uint8_t *write_i(uint8_t *addr, I i) {
      static_assert(std::is_integral<I>(), "require integral type");
      return write(addr, reinterpret_cast<const uint8_t *>(&i), sizeof(i));
    }

    uint8_t *orig_branch_addr() const { return orig_branch_addr_; }
    void flush_always(Tracee& tracee);
  };

  class DirJmpTerminator: public Terminator {
  public:
    DirJmpTerminator(BlockPool& block_pool, const Instruction& jmp, Tracees& tracees,
		     const LookupBlock& lb);
  private:
    static constexpr size_t DIR_JMP_SIZE = Instruction::jmp_relbrd_len;
  };

  class DirJccTerminator: public Terminator {
  public:
    DirJccTerminator(BlockPool& block_pool, const Instruction& jcc, Tracees& tracees,
		     const LookupBlock& lb, const ProbeBlock& pb, const RegisterBkpt& rb, const Block& block);
  private:
    static constexpr size_t DIR_JCC_SIZE =
      Instruction::jcc_relbrd_len + Instruction::jmp_relbrd_len + Instruction::int3_len;
    Instruction jcc_inst;
    uint8_t *orig_dst;
    uint8_t *orig_fallthru;
    uint8_t *jcc_bkpt_addr;
    uint8_t *fallthru_addr;

    enum class Bias {NONE, JCC, FALLTHRU};

    // branch prediction members
    const Block& block;
    xed_iclass_enum_t iclass;
    xed_iform_enum_t iform;
    enum class Direction {FWD, BACK} dir;
    static constexpr unsigned last_decision_bits = 1;
    static std::string last_decision;
    static void add_decision(char c);
    xed_iclass_enum_t last_iclass(void) const;
    const char *last_iclass_str(void) const;
  
    const char *dir_str(void) const;
    static const char *bias_str(Bias bias);
    void handle_bkpt_fallthru(Tracee& tracee);
    void handle_bkpt_jcc(Tracee& tracee);
    void log_bkpt(const char *kind) const;
  
    struct Prediction {
      bool jcc;
      bool fallthru;
    };
  
    Prediction get_prediction(void) const;
    Prediction get_prediction_none(void) const { return {false, false}; }
    Prediction get_prediction_iclass(void) const;
    Prediction get_prediction_iform(void) const;
    Prediction get_prediction_dir(void) const;
    Prediction get_prediction_last_iclass(void) const;
  
    Bias get_bias(void) const;

    Bias get_bias_none(void) const;
    Bias get_bias_iclass(void) const;
    Bias get_bias_iform(void) const;
    Bias get_bias_dir(void) const;
  };

  template <size_t CACHELEN>
  class JmpIndTerminator: public Terminator {
  public:
    JmpIndTerminator(BlockPool& block_pool, PointerPool& ptr_pool, TmpMem& tmp_mem,
		     const Instruction& jmp, Tracees& tracees, const LookupBlock& lb,
		     const RegisterBkpt& rb);
  private:
    static constexpr size_t JMP_IND_SIZE_pre = 7 + 1 + 1;
    static constexpr size_t JMP_IND_SIZE_post = 1 + 1 + 7 + 1 + 1;
    static constexpr size_t JMP_IND_SIZE_base = JMP_IND_SIZE_pre + JMP_IND_SIZE_post;
    static constexpr size_t JMP_IND_SIZE_cmp = 9;
    static constexpr size_t JMP_IND_SIZE_match = 7 + 7;
    static constexpr size_t JMP_IND_SIZE_per = JMP_IND_SIZE_cmp + JMP_IND_SIZE_match;
    static size_t jmp_ind_size(const Instruction& jmp);
    uint8_t *load_addr(const Instruction& jmp, PointerPool& ptr_pool, uint8_t *addr);
    static size_t load_addr_size(const Instruction& jmp);
    uint8_t *match_addr(size_t n, const Instruction& jmp) const;
  
    void handle_bkpt(Tracee& tracee);
  
    std::array<uint8_t **, CACHELEN> origs;
    std::array<Instruction, CACHELEN> newjmps;
    unsigned eviction_index = 0; // next entry to evict. Always in range [0, CACHELEN).
  };

  class RetTerminator: public Terminator {
  public:
    RetTerminator(BlockPool& block_pool, TmpMem& tmp_mem, const Instruction& ret, Tracees& tracees,
		  const LookupBlock& lb, const RegisterBkpt& rb, const ReturnStackBuffer& rsb);

  private:
    static constexpr size_t RET_SIZE = 0x57; // from rsb-ret.asm.
  };

  class CallTerminator: public Terminator {
  public:
    CallTerminator(BlockPool& block_pool, PointerPool& ptr_pool, TmpMem& tmp_mem, size_t size,
		   const Instruction& call, Tracees& tracees, const LookupBlock& lb,
		   const ProbeBlock& pb, const RegisterBkpt& rb, const ReturnStackBuffer& rsb);

  protected:
    uint8_t *subaddr() const { return Terminator::addr() + CALL_SIZE_PRE; }
  
  private:
    static constexpr size_t CALL_SIZE_PRE = 0x33; // from rsb-call.asm
    static constexpr size_t CALL_SIZE_POST = 1; // one breakpoint
    static constexpr size_t CALL_SIZE = CALL_SIZE_PRE + CALL_SIZE_POST;
    uint8_t *orig_ra_val;
    uint8_t **new_ra_ptr;

    void handle_bkpt_ret(Tracee& tracee);  
  };

  class CallDirTerminator: public CallTerminator {
  public:
    CallDirTerminator(BlockPool& block_pool, PointerPool& ptr_pool, TmpMem& tmp_mem,
		      const Instruction& call, Tracees& tracees, const LookupBlock& lb,
		      const ProbeBlock& pb, const RegisterBkpt& rb, const ReturnStackBuffer& rsb);
  
  private:
    static constexpr size_t CALL_DIR_SIZE = 11;
  };

  class CallIndTerminator: public CallTerminator {
  public:
    CallIndTerminator(BlockPool& block_pool, PointerPool& ptr_pool, TmpMem& tmp_mem,
		      const Instruction& call, Tracees& tracees, const LookupBlock& lb,
		      const ProbeBlock& pb, const RegisterBkpt& rb, const ReturnStackBuffer& rsb);
  
  private:
    static constexpr size_t CALL_IND_SIZE = 1;
  };

  class IndTerminator: public virtual Terminator {
  public:
    IndTerminator(BlockPool& block_pool, PointerPool& ptr_pool, const Instruction& call,
		  Tracees& tracees, const LookupBlock& lb, const RegisterBkpt& rb);
  protected:
    static constexpr size_t IND_SIZE = 0; // TODO
  private:
  };

}
