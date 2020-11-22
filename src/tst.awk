#!/usr/bin/awk -f

{
    regex = "\\[.*\\]";
    if ($0 ~ regex) {
	print $0;
    }
}
