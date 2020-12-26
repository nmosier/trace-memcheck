add_compile_options(-Wall -Wextra -pedantic -Werror -Wno-switch -Wno-unused-parameter)

find_package(Gperftools REQUIRED)

link_libraries(${xed_LIBRARIES} ${GPERFTOOLS_LIBRARIES})
include_directories(${xed_INCLUDE_DIRS} ${GPERFTOOLS_INCLUDE_DIR})

# Pass on GPROF for now
# add_compile_options(-pg)
# add_link_options(-pg)

add_subdirectory(dbi)

add_executable(memcheck
  main.cc
  maps.cc
  memcheck.cc
  snapshot.cc
  state.cc
  syscall-check.cc
  addr-range.cc
  tracker.cc
  pageset.cc
  memcheck-vars.cc
  $<TARGET_OBJECTS:dbi>
  )
add_dependencies(memcheck xed)

add_executable(ss
  ss.cc
  $<TARGET_OBJECTS:dbi>
  )
add_dependencies(ss xed)

add_executable(maps-test
  maps-test.cc
  maps.cc
  )

add_executable(jit
  jit-main.cc
  $<TARGET_OBJECTS:dbi>
  )
add_dependencies(jit xed)

add_library(memcheck-libc SHARED
  memcheck-libc.c
  )

