#!/bin/bash
read -p "Enter the input value: " x

#incorporating the ternary operator
output=$((x % 2 == 0 ? 1 : 0))

#using if-else loop to make decision
if [ "$output" -eq 1 ]; then
    echo 'The number is even'
else
    echo 'The number is odd'
fi
