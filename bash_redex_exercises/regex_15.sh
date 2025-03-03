#!/bin/bash

read -p "Enter a path of a log file: " path

[ -z "$path" ] && echo "Error: No file path provided." && exit 1
[ ! -f "$path" ] && echo "Error: File '$path' does not exist." && exit 1

grep -Po '(?<!\S)((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(?!\S)' "$path"
