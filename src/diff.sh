#!/bin/bash

set -e
set -o pipefail

usage() {
    cat <<EOF
usage: $0 [-h] [-n <threshold>] <file1> <file2>
EOF
}

THRESH=20

while getopts "hn:" OPTCHAR; do
    case $OPTCHAR in
	h)
	    usage
	    exit 0
	    ;;
	n)
	    THRESH="$OPTARG"
	    ;;
	*)
	    usage >&2
	    exit 1
	    ;;
    esac
done

shift $((OPTIND-1))

if [[ $# -ne 2 ]]; then
    usage >&2
    exit 1
fi

! diff -- "$@" | awk -v thresh="$THRESH" '
BEGIN {
      line = 0;
      buf = "";
}

/^[[:digit:]]+/ {
      if (FNR - line >= thresh) {
      	 print buf; 
      }
      buf = "";
      line = FNR;
}

{
      buf = buf $0 "\n";
}

END {
    if (FNR - line >= thresh) {
       print buf;
    }
}

'
