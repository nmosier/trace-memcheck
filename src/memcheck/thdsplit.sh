#!/bin/bash

usage() {
    cat <<EOF
usage: $0 pid outfile1 outfile2 infile
EOF
}

if [[ $# -ne 4 ]]; then
    usage >&2
    exit 1
fi

pid="$1"
outfile1="$2"
outfile2="$3"
infile="$4"

rm -f "$outfile1" "$outfile2"

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
