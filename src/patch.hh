/* Patcher 2.0 */

#include <unordered_map>
#include <memory>
#include "decoder.hh"
#include "block.hh"
#include "tracee.hh"

class Patcher {
public:
  Patcher(Tracee& tracee);

  void patch(void *root);
  
private:
  using BlockMap = std::unordered_map<void *, Block>;
  
  Tracee& tracee;
  BlockMap orig_blocks;
};
