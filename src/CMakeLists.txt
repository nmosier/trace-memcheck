link_libraries(${xed_LIBRARIES})
include_directories(${xed_INCLUDE_DIRS})

add_library(core_objs STATIC
  util.cc
  decoder.cc
  tracee.cc
  inst.cc
  )
add_dependencies(core_objs xed)

add_executable(memcheck
  main.cc
  branches.cc
  usermem.cc
  bkpt.cc
  patch.cc
  block.cc
  $<TARGET_OBJECTS:core_objs>
  )
add_dependencies(memcheck xed)

add_executable(ss
  ss.cc
  $<TARGET_OBJECTS:core_objs>
  )
add_dependencies(ss xed)
