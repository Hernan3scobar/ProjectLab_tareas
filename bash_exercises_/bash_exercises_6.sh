#!/bin/bash
read -p "Enter a number: " num1

if (($num1 % 2 == 0)); then
    echo "$num1 is an even number."
else
    echo "$num1 is an odd number."
fi
