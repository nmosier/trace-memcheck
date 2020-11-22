#!/usr/bin/awk -f

BEGIN {
    state = "";
}

/orig inst:/ {
    state = "orig";
    new_inst_cnt = 0;

    orig_inst = substr($0, index($0, ":") + 1)
    
    orig_inst_regex = orig_inst;
    
    if (sub(/\[.*\]/, "\\[.*\\]", orig_inst_regex) == 0) {
	print "could not substitute: ", $0;
	exit 1;
    }
    orig_inst_regex = "[[:space:]]*" orig_inst_regex "[[:space:]]*";
}

/new inst:/ {
    state = "new";
    if (++new_inst_cnt == 3) {
	/* check equivalence with orig_inst */
	new_inst = substr($0, length("new inst:"));
	if (!match(new_inst, orig_inst_regex)) {
	    print "instructions don't match";
	    print "orig inst: ", orig_inst;
	    print "orig inst regex: ", orig_inst_regex;
            print "new inst: ", new_inst;
            exit 1
	}
    }
}

END {
}
