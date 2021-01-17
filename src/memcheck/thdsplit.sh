#!/bin/bash

usage() {
    cat <<EOF
usage: $0 [-t pid] outfile1 outfile2 infile
EOF
}

unset pid

while getopts "ht:" OPTCHAR; do
    case $OPTCHAR in
	h)
	    usage
	    exit 0
	    ;;
	t)
	    pid=$((OPTARG))
	    ;;
	*)
	    usage >&2
	    exit 1
	    ;;
    esac
done
shift $((OPTIND-1))

if [[ $# -ne 3 ]]; then
    usage >&2
    exit 1
fi

outfile1="$1"
outfile2="$2"
infile="$3"

if [[ -z ${pid+x} ]]; then
    # automatically find pid
    pid=$(grep -o "^\[[[:digit:]]*\]" "$infile" | head -1 | grep -o "[[:digit:]]*")
    echo "using pid=$pid"
fi

rm -f "$outfile1" "$outfile2"

# find thread ID if not given

awk -v pid="$pid" < "$infile" '
/^\[[[:digit:]]+\] ss/ {
  if (index($1, pid) != 0) {
     print $0;
  }
}
' | cut --complement -f1 -d' ' > "$outfile1"

awk -v pid="$pid" < "$infile" '
/^\[[[:digit:]]+\] ss/ {
  if (index($1, pid) == 0) {
     print $0;
  }
}
' | cut --complement -f1 -d' ' > "$outfile2"
