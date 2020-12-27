function(create_test TESTNAME BIN SPEC)
  add_test(NAME ${TESTNAME}
    COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/run.sh -m $<TARGET_FILE:memcheck>
    -d ${SPEC} -- ${BIN} ${ARGN}
    )
endfunction()

function(create_local_test TEST)
  set(SPEC ${CMAKE_CURRENT_SOURCE_DIR}/${TEST}.env)
  foreach(OPTIM O0 O1 O2 O3)
    set(TESTNAME ${TEST}-${OPTIM})
    add_executable(${TESTNAME} ${TEST}.c)
    create_test(${TESTNAME} $<TARGET_FILE:${TESTNAME}> ${SPEC} ${ARGN})
  endforeach()
endfunction()

function(create_local_tests)
  foreach(TEST ${ARGN})
    create_local_test(${TEST})
  endforeach()
endfunction()

function(create_system_test TESTNAME BIN)
  set(SPEC ${CMAKE_CURRENT_SOURCE_DIR}/${TESTNAME}.env)
  create_test(${TESTNAME} ${BIN} ${SPEC} ${ARGN})
endfunction()

create_local_tests(bad-fd-read bad-return-value fib strlen bad-if)
create_local_test(myls ${CMAKE_CURRENT_SOURCE_DIR}/myls-dir)

create_system_test(ls ls ${CMAKE_CURRENT_SOURCE_DIR}/ls-dir)
create_system_test(ls-l ls -l ${CMAKE_CURRENT_SOURCE_DIR}/ls-dir)
