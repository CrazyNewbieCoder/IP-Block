#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Считает, сколько доменов в файле default_whitelist.txt

sed -e '/#/d' -e '/^$/d' -e '/[[:space:]]/d' default_whitelist.txt | uniq | wc -l
