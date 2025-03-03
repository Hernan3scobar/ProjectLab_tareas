#!/bin/bash

read -p "Enter a filepath: " filepath

[ -f $filepath ] &&  { 
    grep --color=always -w  "root" "$filepath"
} || echo "File does not exist"

