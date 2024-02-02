#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Підраховує кількість доменів у файлі default_whitelist.txt

sed -e '/#/d' -e '/^$/d' -e '/[[:space:]]/d' ./sources/default_whitelist.txt | uniq | wc -l
