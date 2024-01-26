#!/usr/bin/env bash
# -*- coding: utf-8 -*-

rm -f ./tmp/tmpblock

while IFS= read -r line; do
    # echo "Line: $line"
    wget --no-check-certificate -t 1 -T 10 -q -O ./tmp/tmpb "$line"
    echo "" >>./tmp/tmpblock
    cat ./tmp/tmpb >>./tmp/tmpblock
    rm -f ./tmp/tmpb
done < <(grep -v '^ *#\|^$' <./sources/sources_blocklist.txt)
