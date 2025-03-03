#!/bin/bash


read -p "Enter a file path: " path

[ -z "$path" ] && echo "Error: No file path provided." && exit 1
[ ! -f "$path" ] && echo "Error: File '$path' does not exist." && exit 1

grep --color=auto -nE 'failed|denied' "$path"
