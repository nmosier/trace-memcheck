add_executable(memcheck
  main.cc
  branches.cc
  decoder.cc
  util.cc
  )
add_dependencies(memcheck xed)
target_link_libraries(memcheck PRIVATE ${xed_LIBRARIES})
target_include_directories(memcheck PRIVATE ${xed_INCLUDE_DIRS})
