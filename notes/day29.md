# Day 29 Practice: Conditional Statements in Bash

## Learning Focus
Today’s focus was mastering **conditional logic** in Bash — learning how to make scripts “think” by reacting differently based on input or system state.

I practiced real-world examples using `if`, `elif`, `else`, and logical comparison operators (`-eq`, `-lt`, `-gt`, `==`, `!=`).

## Practical Exercises and Results

### 1. Number Check Script
Created a script that checks whether a number is positive, negative, or zero.

**Command Log:**
nano number_check.sh
chmod +x number_check.sh
./number_check.sh
Enter a number: zero
./number_check.sh: line 6: [: zero: integer expression expected
./number_check.sh: line 8: [: zero: integer expression expected
zero is zero.
Lesson Learned:
The script initially expected numeric input, but entering a word triggered a type error (integer expression expected).
This was a good reminder that Bash doesn’t handle type coercion like higher-level languages, you must validate input explicitly.

### 2. File Existence Checker
Created a script that checks whether a given file exists.

Command Log:
nano file_check.sh
chmod +x file_check.sh
./file_check.sh
Enter filename: file
File 'file' does not exist.

Lesson Learned:
The -f operator checks for the existence of a regular file.
I learned how Bash can dynamically verify system files or configurations before proceeding, an essential skill for automation scripts.

### 3. Login Simulation Script
Created a simple login simulation using nested conditionals.

Command Log:
nano login_sim.sh
chmod +x login_sim.sh
./login_sim.sh
Enter username: admin
Enter password: 
Login successful. Welcome, admin!

Lesson Learned:
Practiced combining conditionals and user input to mimic authentication flow, a small but meaningful step toward scripting real interactive utilities.
