add_compile_options(-Wall -Wextra -pedantic -Werror -Wno-switch -Wno-unused-parameter)

find_package(Gperftools REQUIRED)

link_libraries(${xed_LIBRARIES} ${GPERFTOOLS_LIBRARIES})
include_directories(${xed_INCLUDE_DIRS} ${GPERFTOOLS_INCLUDE_DIR} ${CMAKE_CURRENT_SOURCE_DIR})

# Pass on GPROF for now
# add_compile_options(-pg)
# add_link_options(-pg)

add_subdirectory(dbi)
add_subdirectory(memcheck)

add_executable(ss
  ss.cc
  $<TARGET_OBJECTS:dbi>
  )
add_dependencies(ss xed)

add_executable(jit
  jit-main.cc
  $<TARGET_OBJECTS:dbi>
  )
add_dependencies(jit xed)
