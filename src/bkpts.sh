#!/bin/bash

THRESH=100

./memcheck -b -- "$@" 2>&1 | grep '^bkpt ' | sort -k2,2 -k4,4 | uniq -c | awk "
{
	if (\$1 > $THRESH) {
	   print \$0;
	}
}
"
