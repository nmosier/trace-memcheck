#!/bin/bash

usage() {
    cat <<EOF
usage: $0 <trace1> <trace2>
EOF
}

if [[ $# -ne 2 ]]; then
    usage >&2
    exit 1
fi

TRACE1="$1"
TRACE2="$2"

SUFFIX1=`mktemp`
SUFFIX2=`mktemp`

get_suffixes() {
    grep -Eo "[[:xdigit:]]{3}$" < "$1" > "$2"
}

get_suffixes "$TRACE1" "$SUFFIX1"
get_suffixes "$TRACE2" "$SUFFIX2"

LINE=0
while read -u 3 PC1 && read -u 4 PC2; do
    (( ++LINE ))
    # echo "$PC1" "$PC2"
    if [[ "$PC1" != "$PC2" ]]; then
	echo $LINE
    fi
done 3< "$SUFFIX1" 4< "$SUFFIX2"


# diff --unchanged-line-format="" --old-line-format="" --new-line-format=":%dn: %L" "$SUFFIX1" "$SUFFIX2"
