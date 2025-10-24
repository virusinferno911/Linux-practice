#!/bin/bash
# countdown.sh - Countdown from 5 to 1

count=5
while [ $count -gt 0 ]
do
  echo "Countdown: $count"
  ((count--))
done

echo "Lift off!"
