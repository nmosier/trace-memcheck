#!/bin/bash

FILE=memcheck.jcc
CFILE=memcheck.jcc_inc

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
    for (cc in jccs) {
    	/* compute factor */
	if (jccs[cc] == 0 || fallthrus[cc] == 0) {
	   frac = \"INFINITY\";
	} else {
	   frac = jccs[cc] / fallthrus[cc];
	   if (frac < 1) {
	      frac = 1 / frac;
	   }
	}
    	print cc, jccs[cc], fallthrus[cc], frac;
    }
}
" | (echo "CC" "JCC" "FALLTHRU" "FRAC"; sort -rnk4) | column -t | tee $FILE

# also create file in different format
truncate --size=0 $CFILE
N=$(cat $FILE | wc -l)
(( --N ))
printf "constexpr std::array<std::tuple<xed_iform_enum_t, Bias, float>, %d> bias_arr = {\n" $N >> $CFILE

tail -n+2 $FILE | awk "
{
      if (\$2 > \$3) {
   	name = \"JCC\";
      }	else {
      	name = \"FALLTHRU\";
      }
      printf \"std::make_tuple (XED_IFORM_%s, Bias::%s, %s),\\n\", \$1, name, \$4;
}
" >> $CFILE

printf "};\n" >> $CFILE
