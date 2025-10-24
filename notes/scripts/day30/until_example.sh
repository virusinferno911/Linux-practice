#!/bin/bash
# until_example.sh - Runs until num > 5

num=1
until [ $num -gt 5 ]
do
  echo "Number is $num"
  ((num++))
done
