#!/bin/bash

CPUPROFILE_FREQUENCY=10000
rm -f memcheck.txt memcheck.prof
if ! ./memcheck -p -- "$@"; then
    exit 1
fi
pprof ./memcheck memcheck.prof > memcheck.txt # | sort -grk5 > memcheck.txt
