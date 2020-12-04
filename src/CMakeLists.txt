find_package(Gperftools REQUIRED)

link_libraries(${xed_LIBRARIES} ${GPERFTOOLS_LIBRARIES})
include_directories(${xed_INCLUDE_DIRS} ${GPERFTOOLS_INCLUDE_DIR})

# Pass on GPROF for now
# add_compile_options(-pg)
# add_link_options(-pg)

add_library(core_objs STATIC
  util.cc
  decoder.cc
  tracee.cc
  inst.cc
  patch.cc
  block.cc
  usermem.cc
  block-term.cc
  rsb.cc
  config.cc
  memcheck.cc
  )
add_dependencies(core_objs xed)

add_executable(memcheck
  main.cc
  $<TARGET_OBJECTS:core_objs>
  )
add_dependencies(memcheck xed)

add_executable(ss
  ss.cc
  $<TARGET_OBJECTS:core_objs>
  )
add_dependencies(ss xed)
