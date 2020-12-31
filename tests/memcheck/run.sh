#!/bin/bash

# set -e
set -o pipefail

usage() {
    cat <<EOF
usage: $0 [-h] [-m <memcheck>] [-d <testdesc>] command [args...]
Environment variables:
  MEMCHECK -- path to memcheck (also set with option '-m')
EOF
}

while getopts "hm:d:" OPTCHAR; do
    case $OPTCHAR in
	"h")
	    usage
	    exit 0
	    ;;
	"m")
	    MEMCHECK="$OPTARG"
	    ;;
	"d")
	    TESTDESC="$OPTARG"
	    ;;
	*)
	    usage >&2
	    exit 1
	    ;;
    esac
done

shift $((OPTIND-1))

if [[ $# -lt 1 ]]; then
    usage >&2
    exit 1
fi

if [[ -z ${MEMCHECK+x} ]]; then
    echo "$0: 'MEMCHECK' isn't set" >&2
    exit 1
elif ! [[ -x "$MEMCHECK" ]]; then
    echo "$0: cannot execute memcheck at '$MEMCHECK'"
    exit 1
fi

mktemp_trap() {
    tmpfile=`mktemp`
    trap "rm -f $tmpfile" EXIT
    echo $tmpfile
}

exit_nz() {
    rv=$?
    if [[ $rv -ne 0 ]]; then
	exit $rv
    fi
}

cmd_to_file() {
    CMDSTR="$@"
    script -eqc "$CMDSTR 2> $STDERR" | tr -cd [[:print:]] > $STDOUT
    # sed -i '1d' "$STDOUT"
}

cmd_to_str() {
    CMDSTR="$@"
    script -eqc "$CMDSTR 2> $STDERR" | tr -cd [[:print:]]
}

COMMANDS=("$@")
if ! [[ -x "${COMMANDS[0]}" ]]; then
    COMMANDS[0]="$(which "${COMMANDS[0]}")"
    if [[ -z "${COMMANDS[0]}" ]]; then
	echo "$0: failed to find executable '$1'" >&2
	exit 1
    fi
fi

STDOUT=`mktemp_trap`
STDERR=`mktemp_trap`
# NOTE: Different on macOS.
# TODO: Broken COMMANDS array expansion
CMDSTR="$MEMCHECK -- ${COMMANDS[@]}"
cmd_to_file "$MEMCHECK" -- "${COMMANDS[@]}"
EXITNO=$?

BAD_ERRORS=2
BAD_WARNINGS=3
BAD_STDOUT=4
BAD_EXIT=5

unset warnings
unset errors
unset exit
source "$TESTDESC"

if ! [[ -z $errors ]]; then
    actual_errors=$(grep "memcheck: error:" $STDERR | wc -l)
    if [[ $actual_errors -ne $errors ]]; then
	echo "$0: mismatch in error count: actual=$actual_errors, expected=$errors"
	exit $BAD_ERRORS
    fi
fi

if ! [[ -z $warnings ]]; then
    actual_warnings=$(grep "memcheck: warning:" $STDERR | wc -l)
    if [[ $actual_warnings -ne $warnings ]]; then
	echo "$0: mismatch in warning count: actual=$actual_warnings, expected=$warnings"
	exit $BAD_WARNINGS
    fi 
fi

DIFF=`mktemp_trap`
if ! [[ -z ${stdout+x} ]]; then
    printf "%s" "$stdout" | if ! diff $STDOUT - > $DIFF; then
	echo "$0: mismatch in stdout:"
	cat $DIFF
	echo "stdout:"
	printf '%s' "$stdout"
	echo "done"
	echo "STDOUT:"
	cat $STDOUT
	echo "done"
	exit $BAD_STDOUT
    fi
    exit_nz # because of the stupid pipe
fi

if ! [[ -z $exitno ]]; then
    if ! [[ $EXITNO -eq $exitno ]]; then
	echo "$0: mismatch in exit number: actual=$EXITNO, expected=$exitno"
	exit $BAD_EXIT
    fi
fi
