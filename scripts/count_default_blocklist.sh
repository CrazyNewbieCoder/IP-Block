#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Считает, сколько доменов в файле default_blocklist.txt

sed -e '/#/d' -e '/^$/d' -e '/[[:space:]]/d' ./sources/default_blocklist.txt | uniq | wc -l
