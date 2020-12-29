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
  romcache.cc
  syscall.cc
  regs.cc
  status.cc
  )
add_dependencies(dbi xed)
