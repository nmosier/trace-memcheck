#!/bin/bash

usage() {
    cat <<EOF
usage: $0 [-h] [-o <file>] command [arg...]
EOF
}

OUTF='memcheck.txt'

while getopts "ho:" OPTCHAR; do
    case $OPTCHAR in
	'h')
	    usage
	    exit 0
	    ;;
	'o')
	    OUTF="$OPTARG"
	    ;;
	*)
	    usage >&2
	    exit 1
	    ;;
    esac
done

shift $((OPTIND-1))

CPUPROFILE_FREQUENCY=10000
rm -f memcheck.txt memcheck.prof
if ! ./memcheck -p -- "$@"; then
    exit 1
fi
pprof ./memcheck memcheck.prof > "$OUTF" # | sort -grk5 > memcheck.txt
