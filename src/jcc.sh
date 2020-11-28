#!/bin/bash

FILE=memcheck.jcc

rm -f $FILE
./memcheck -j -- "$@" 2>&1 | grep -E '^(JCC|FALLTHRU) ' | cut -d' ' -f1,2 | sort -k2 -k1 | uniq -c | awk "
BEGIN {
}

/JCC/ {
      jccs[\$3] = \$1;
      if (!(\$3 in fallthrus)) {
      	 fallthrus[\$3] = 0;
      }
}

/FALLTHRU/ {
      fallthrus[\$3] = \$1;
      if (!(\$3 in jccs)) {
      	 jccs[\$3] = 0;
      }
}

END {
    print \"CC\", \"JCC\", \"FALLTHRU\", \"FRAC\";
    for (cc in jccs) {
    	/* compute factor */
	if (jccs[cc] == 0 || fallthrus[cc] == 0) {
	   frac = \"inf\";
	} else {
	   frac = jccs[cc] / fallthrus[cc];
	   if (frac < 1) {
	      frac = 1 / frac;
	   }
	}
    	print cc, jccs[cc], fallthrus[cc], frac;
    }
}
" | column -t | tee $FILE
