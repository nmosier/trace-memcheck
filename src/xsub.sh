#!/bin/bash

usage() {
    cat <<EOF
usage: $0 <super_f> <sub_f> 
EOF
}

if [[ $# -ne 2 ]]; then
    usage >&2
    exit 1
fi

SUPER0="$1"
SUB0="$2"

SUPER1=`mktemp`
SUB1=`mktemp`
trap "rm -f $SUPER1 $SUB1" EXIT

cut -d' ' -f5 "$SUB0" | cut -d':' -f1 > "$SUB1"
cut -d' ' -f4 "$SUPER0" | cut -d':' -f1 > "$SUPER1"

exec 3<> "$SUPER1"

while read SUBLINE; do
    FOUND=0
    while read -u 3 SUPERLINE; do
	if [[ "$SUBLINE" = "$SUPERLINE" ]]; then
	    FOUND=1
	    break
	fi
    done
    if ! [[ "$FOUND" -eq 1 ]]; then
	echo "mismatch: SUB=$SUBLINE"
	exit 1
    fi
done < "$SUB1"

exit 0

