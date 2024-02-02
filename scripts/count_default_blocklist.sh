#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Підраховує кількість доменів у файлі default_blocklist.txt

sed -e '/#/d' -e '/^$/d' -e '/[[:space:]]/d' ./sources/default_blocklist.txt | uniq | wc -l
