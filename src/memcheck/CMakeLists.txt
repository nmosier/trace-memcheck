add_executable(memcheck
  addr-range.cc
  config.cc
  log.cc
  main.cc
  maps.cc
  memcheck.cc
  pageset.cc
  snapshot.cc
  state.cc
  syscall-check.cc
  tracker.cc
  vars.cc
  $<TARGET_OBJECTS:dbi>
  )
add_dependencies(memcheck xed)

add_library(memcheck-libc SHARED
  libc.c
  )

target_compile_definitions(memcheck PRIVATE MEMCHECK_LIBC=\"$<TARGET_FILE:memcheck-libc>\")

add_executable(transform
  transform-test.cc
  )

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/profile.sh
  DESTINATION ${CMAKE_CURRENT_BINARY_DIR}
  )
