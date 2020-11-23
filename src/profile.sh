#!/bin/bash

CPUPROFILE_FREQUENCY=10000
rm -f memcheck.txt memcheck.prof
./memcheck -p -- "$@"
pprof ./memcheck memcheck.prof | sort -grk5 > memcheck.txt
