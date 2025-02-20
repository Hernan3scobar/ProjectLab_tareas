#!/bin/bash

read -p "Enter a number: " num1
read -p "Enter another number: " num2
read -p "Enter an operator: " operator

if [ "$operator" = "/" ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Division by zero is not allowed."
    else
        echo "The result of $num1 $operator $num2 is: $((num1 / num2))"
    fi
elif [ "$operator" = "*" ]; then
    echo "The result of $num1 $operator $num2 is: $((num1 * num2))"
else
    echo "The result of $num1 $operator $num2 is: $((num1 $operator num2))"
fi
