#!/bin/bash

usage() {
    cat <<EOF
usage: $0 [-hm]
Options:
 -h       print help dialog
 -m<arg>  set mode; <arg> options: 'iclass', 'iform'
 -o<path> output includable C code to <path>
EOF
}

MODE='iclass'
CFILE=''

FILE=`mktemp`
trap "rm -f $FILE" EXIT

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
if [[ "$mode" != 'iclass' ]] && [[ "$mode" != 'iform' ]]; then
    echo "$0: -m$MODE: illegal mode value"
    exit 1
fi

shift $((OPTIND-1))

./memcheck -j"$mode" --prediction-mode=none -- "$@" 2>&1 | grep -E '^(JCC|FALLTHRU) ' | awk '
{
      if ($3 in arr) {
      	 arr[$3] = "BOTH";
      } else {
      	arr[$3] = $1;
      }
      iclasses[$3] = $2;
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

    printf "%s %.3f %.3f\n", i, sum_jcc / sum, sum_fallthru / sum;
  }
}

' | (echo 'CC JCC FALLTHRU'; cat) | column -t | tee $FILE

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
