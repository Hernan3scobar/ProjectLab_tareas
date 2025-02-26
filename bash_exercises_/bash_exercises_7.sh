#!/bin/bash

echo "The files .txt in the current directory are:"

for file in *.txt; do
    echo "$file"
done