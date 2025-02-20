#!/bin/bash

read -p "Enter a directory path: " dirpath

if [ -d $dirpath ]; then
    ls $dirpath
else
    echo "Directory does not exist."
fi
