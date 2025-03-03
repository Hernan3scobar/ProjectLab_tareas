#!/bin/bash

read -p "Enter a path to directory: " path

[ -d $path ] && {
    grep -l "script" $path/* | xargs  -n1 basename 
}|| echo "Directory does not exist"