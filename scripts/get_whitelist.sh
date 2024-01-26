#!/usr/bin/env bash
# -*- coding: utf-8 -*-

rm -f ./tmp/tmpwhite

while IFS= read -r line; do
    # echo "Line: $line"
    wget --no-check-certificate -t 1 -T 10 -q -O ./tmp/tmpw "$line"
    echo "" >>./tmp/tmpwhite
    cat ./tmp/tmpw >>./tmp/tmpwhite
    rm -f ./tmp/tmpw
done < <(grep -v '^ *#\|^$' <./sources/sources_whitelist.txt)
