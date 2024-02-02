#!/usr/bin/env bash
# -*- coding: utf-8 -*-

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

if [ "$#" -ne 2 ]; then
    echo -e "${RED}Не були передані імена файлів як параметри.${NC}"
    echo -e "${GREEN}Використання:${NC}   $0 'файл_с_доменами_1' 'файл_с_доменами_2'"
    exit 1
elif [ ! -f "$1" ] && [ ! -f "$2" ]; then
    echo -e "Файли ${RED}'$1'${NC} та ${RED}'$2'${NC} не існують."
    exit 1
elif [ ! -f "$1" ]; then
    echo -e "Файл ${RED}'$1'${NC} не існує."
    exit 1
elif [ ! -f "$2" ]; then
    echo -e "Файл ${RED}'$2'${NC} не існує."
    exit 1
fi

# Видаляємо з першого файлу домени, які є у другому файлі.
comm -23 <(sort -u "$1") <(sort -u "$2") >"./tmp/tmpduplicates"
mv "./tmp/tmpduplicates" "$1"

echo "Видалення завершено. Оновлений файл: $1"
