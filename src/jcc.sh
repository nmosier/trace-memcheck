#!/bin/bash

set -e  # exit on any error
set -o pipefail

usage() {
    cat <<EOF
usage: $0 [-hm]
Options:
 -h       print help dialog
 -m<arg>  set mode; <arg> options: 'none', 'iclass', 'iform', 'dir'
 -o<path> output includable C code to <path>
EOF
}

MODE=''
CFILE=''

FILE=`mktemp`
trap "rm -f $FILE" EXIT
MEMCHECK_STDERR=`mktemp`
trap "rm -f $MEMCHECK_STDERR" EXIT

while getopts 'hm:o:' OPTCHAR; do
    case $OPTCHAR in
	'h')
	    usage
	    exit 0
	    ;;
	'm')
	    MODE="$OPTARG"
	    ;;
	'o')
	    CFILE="$OPTARG"
	    ;;
	'?')
	    usage >&2
	    exit 1
	    ;;
    esac
done

if [[ -z "$MODE" ]]; then
    echo "$0: specify mode with -m<mode>"
    exit 1
fi

mode=$(echo "$MODE" | tr [A-Z] [a-z])
MODE=$(echo "$MODE" | tr [a-z] [A-Z])

shift $((OPTIND-1))

if ! ./memcheck -j --prediction-mode=none -- "$@" > /dev/null 2> $MEMCHECK_STDERR; then
    cat $MEMCHECK_STDERR | grep -Ev '^(JCC|FALLTHRU)'
    exit 1
fi

k_kind=1
k_ptr=2
k_iclass=3
k_iform=4
k_dir=5
AWK_DEFS="-v k_kind=1 -v k_ptr=2 -v k_iclass=3 -v k_iform=4 -v k_dir=5"

key=''

for m in $(echo "$mode" | tr ',' ' '); do
    if ! [[ -z "$key" ]]; then
	key+=","
    fi
    case $m in
	"iclass")
	    key+=3
	    ;;
	"iform")
	    key+=4
	    ;;
	"dir")
	    key+=5
	    ;;
	"last_decision")
	    key+=6
	    ;;
	"last_iclass")
	    key+=7
	    ;;
	*)
	    echo "$0: bad mode" >&2
	    exit 1
	    ;;
    esac
done

grep -E '^(JCC|FALLTHRU) ' < $MEMCHECK_STDERR | cut -d' ' -f$k_kind,$k_ptr,$key | awk '
BEGIN {
      SUBSEP=","
}
{
      if ($2 in arr) {
      	 arr[$2] = "BOTH";
      } else {
      	arr[$2] = $1;
      }

      idx="";
      for (i = 3; i <= NF; ++i) {
      	 if (idx != "") {
	    idx = idx SUBSEP;
	 }
	 idx = idx $i;
      }
      iclasses[$2] = idx;
}
END {
    for (inst in arr) {
    	print iclasses[inst], arr[inst];    	
    }
}
' | sort | uniq -c | awk '
{ arr[$2][$3] = $1; }
END {
  for (i in arr) {
    if ("BOTH" in arr[i]) {
       both = arr[i]["BOTH"];
    } else {
       both = 0;
    }
    if ("JCC" in arr[i]) {
       jcc = arr[i]["JCC"];
    } else {
      jcc = 0;
    }
    if ("FALLTHRU" in arr[i]) {
       fallthru = arr[i]["FALLTHRU"];
    } else {
      fallthru = 0;
    }

    sum_jcc = jcc + both;
    sum_fallthru = fallthru + both;
    sum_both = both;
    sum = jcc + both + fallthru;

    printf "%s %.3f %.3f %d\n", i, sum_jcc / sum, sum_fallthru / sum, sum;
  }
}

' | (echo 'CC JCC FALLTHRU COUNT'; cat) | column -t | tee $FILE

if [[ -z "$CFILE" ]]; then
    exit 0
fi

tail -n+2 $FILE | awk -v MODE="$MODE" -v mode="$mode" '
BEGIN {
  printf "switch (%s) {\n", mode;
}

{
  printf "case XED_%s_%s:\n", MODE, $1;
  printf "  jcc = %s >= thresh;\n", $2;
  printf "  fallthru = %s >= thresh;\n", $3;
  printf "  break;\n";
}

END {
  printf "default:\n";
  printf "  jcc = false;\n";
  printf "  fallthru = false;\n";
  printf "  break;\n";
  printf "}\n";
}
' > $CFILE
