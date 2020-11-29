#!/bin/bash

FILE=memcheck.jcc
CFILE=memcheck.jcc_inc

rm -f $FILE
./memcheck -j -- "$@" 2>&1 | grep -E '^(JCC|FALLTHRU) ' | awk '
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
tail -n+2 $FILE | awk '
BEGIN {
  printf "switch (iclass) {\n";
}

{
  printf "case XED_ICLASS_%s:\n", $1;
  printf "  jcc = %s >= thresh;\n", $2;
  printf "  fallthru = %s >= thresh;\n", $3;
  printf "  break;\n";
}

END {
  printf "default: break;\n";
  printf "}\n";
}
' > $CFILE
