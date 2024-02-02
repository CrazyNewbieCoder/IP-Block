#!/usr/bin/env bash
# -*- coding: utf-8 -*-

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

if [ -z "$1" ]; then
    echo -e "${RED}Не було передано ім'я файлу як параметр.${NC}"
    echo -e "${GREEN}Використання:${NC} $0 'ім'я файлу'"
    exit 1
fi

if ! [ -f "$1" ]; then
    echo -e "${RED}Файла '$1' не існує.${NC}"
    exit 1
fi

while IFS= read -r domain; do
    if ! [[ $domain =~ ^([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$ ]]; then
        echo -e "${RED}$domain is a valid domain.${NC}"
    fi
done <"$1"
