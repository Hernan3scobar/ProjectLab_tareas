#!/bin/bash

read -p "Enter a file path: " path

[ -z "$path" ] && echo "Error: No file path provided." && exit 1
[ ! -f "$path" ] && echo "Error: File '$path' does not exist." && exit 1
grep -Po '\b(?<!\d)((19|20)\d{2}|[0-9]{4})-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])(?!\d)\b' "$path"