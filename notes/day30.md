# Day 30 Practice: Shell Scripting: Loops in Bash

## Learning Summary
Today’s focus was on **loop structures** in Bash — an essential foundation for automating repetitive tasks.  
I explored four major types of loops:

### Concept 1: The for Loop
Used to iterate over a list of items or a range of numbers.

**Script:** `list_files.sh`

#!/bin/bash
# list_files.sh - Lists all files in the current directory

for file in *
do
  echo "Found file: $file"
done

Output:
Found file: countdown.sh
Found file: list_files.sh
Found file: until_example.sh
Found file: nested_loop.sh

### Concept 2: The while Loop
Executes repeatedly while a condition is true.

Script: countdown.sh

#!/bin/bash
# countdown.sh - Countdown from 5 to 1

count=5
while [ $count -gt 0 ]
do
  echo "Countdown: $count"
  ((count--))
done

echo "Lift off!"


Output:
Countdown: 5
Countdown: 4
Countdown: 3
Countdown: 2
Countdown: 1
Lift off!

### Concept 3: The until Loop
Runs until a condition becomes true.

Script: until_example.sh

#!/bin/bash
# until_example.sh - Runs until a condition is met

num=1
until [ $num -gt 5 ]
do
  echo "Number is $num"
  ((num++))
done

Output:
Number is 1
Number is 2
Number is 3
Number is 4
Number is 5

### Concept 4: Nested Loops
Loops within loops — useful for generating combinations or handling multi-level data.

Script: nested_loop.sh

#!/bin/bash
# nested_loop.sh - Demonstrates nested loops

for i in 1 2 3
do
  for j in a b c
  do
    echo "Combination: $i$j"
  done
done

Output:
Combination: 1a
Combination: 1b
Combination: 1c
Combination: 2a
Combination: 2b
Combination: 2c
Combination: 3a
Combination: 3b
Combination: 3c

## Practice Summary
*Created and tested:
--countdown.sh (while loop)
--list_files.sh (for loop)
--until_example.sh (until loop)
--nested_loop.sh (nested for loop)

Then organized scripts under:
~/linux-practice/notes/scripts/day30/

### Reflection
Today’s exercises showed how loops simplify automation, letting repetitive or condition-based tasks run seamlessly.
Understanding how to combine conditions, lists, and iterations builds the foundation for writing smarter, more scalable shell scripts.
