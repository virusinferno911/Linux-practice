#!/bin/bash
# This script checks if a number is positive or negative

read -p "Enter a number: " num

if [ $num -gt 0 ]; then
    echo "$num is positive."
elif [ $num -lt 0 ]; then
    echo "$num is negative."
else
    echo "$num is zero."
fi
