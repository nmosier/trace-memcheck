#!/usr/bin/awk -f

BEGIN {

}

/^[[:space:]]+[[:xdigit:]]+:/ {
    for (i = 2; i <= NF && i < 2 + 7; ++i) {
	if ($i !~ /[[:xdigit:]][[:xdigit:]]/) {
	    break;
	}
	printf "0x%s, ", $i;
    }
}

END {
    printf "\n";
}
