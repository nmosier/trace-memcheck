add_library(dbi STATIC
  decoder.cc
  tracee.cc
  inst.cc
  patch.cc
  block.cc
  usermem.cc
  block-term.cc
  rsb.cc
  config.cc
  block-pool.cc
  romcache.cc
  syscall.cc
  regs.cc
  )
add_dependencies(dbi xed)
