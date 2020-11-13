/* Patcher 2.0 */

#include <unordered_map>
#include <memory>
#include "decoder.hh"
#include "block.hh"
#include "tracee.hh"

class Patcher {
public:
  Patcher(Tracee& tracee);

  void patch(uint8_t *root);

private:
  using BlockMap = std::unordered_map<uint8_t *, Block>;
  enum class BranchKind {
    DIR,      // direct branch: JMP, CALL
    DIR_COND, // direct conditional branch: J{CC}
    IND,      // indirect branch: JMP, CALL, RET
  };
  enum class BkptKind {
    RET,
    COND,
    IND,
  };

  static constexpr size_t block_pool_size = 0x100000;
  Tracee& tracee;
  BlockMap block_map;
  BlockPool block_pool;

  template <typename OutputIt>
  void patch_one(uint8_t *pc, OutputIt output_it);
};
