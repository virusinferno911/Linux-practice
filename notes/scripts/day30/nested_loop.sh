#!/bin/bash
# nested_loop.sh - Demonstrates nested for loops

for i in 1 2 3
do
  for j in a b c
  do
    echo "Combination: $i$j"
  done
done
