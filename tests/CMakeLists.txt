function(create_test)
  foreach(TEST ${ARGN})
    foreach(OPTIM O0 O1 O2 O3)
      set(TESTNAME ${TEST}-${OPTIM})

      add_executable(${TESTNAME} ${TEST}.c)
      add_test(NAME ${TESTNAME}
	COMMAND memcheck ./${TESTNAME}
	)
    endforeach()
  endforeach()
endfunction()

create_test(bad-fd-read bad-return-value fib strlen nz myls bad-if)
