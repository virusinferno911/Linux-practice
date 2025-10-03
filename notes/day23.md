# Day 23 Practice: Job Control & Interactive Process Management

Today’s focus was on **managing jobs in Linux**, including sending processes to the background, foreground, suspending, resuming, and terminating them.

## Commands & Practice

### 1. Start a job in the background
sleep 300 &
Starts a process (sleep 300) in the background.
Output: [1] 1246643 → job number and PID.

### 2. List jobs
jobs
Shows active jobs in the current shell.
Example output:
[1]+  Running                 sleep 300 &

### 3. Bring job to the foreground
fg %1

%1 → refers to job number 1.
Process (sleep 300) now runs in foreground.

### 4. Suspend job
Use CTRL+Z while it’s running in foreground.

Output:
[1]+  Stopped                 sleep 300

### 5. Resume job in background
bg %1
Resumes the stopped job back to background.

### 6. Kill a job
kill %1
Terminates job number 1.

## Key Takeaways
& → run a process in background.
jobs → list running/stopped jobs.
fg %n → bring job n to foreground.
bg %n → resume stopped job in background.
kill %n → terminate job by job number.
CTRL+Z → suspend a running job.
