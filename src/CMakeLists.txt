add_executable(memcheck
  main.cc
  branches.cc
  decoder.cc
  util.cc
  usermem.cc
  bkpt.cc
  tracee.cc
  patch.cc
  block.cc
  inst.cc
  )
add_dependencies(memcheck xed)
target_link_libraries(memcheck PRIVATE ${xed_LIBRARIES})
target_include_directories(memcheck PRIVATE ${xed_INCLUDE_DIRS})

add_executable(ss
  ss.cc
  util.cc
  decoder.cc
  tracee.cc
  )
target_link_libraries(ss PRIVATE ${xed_LIBRARIES})
target_include_directories(ss PRIVATE ${xed_INCLUDE_DIRS})
