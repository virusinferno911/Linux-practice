# Day 22 Practice: Process Management

##Learning Objectives
- Understand **what processes are** in Linux.  
- Learn to **view processes** with `ps` and `top`.  
- Practice **terminating processes** with `kill` and `pkill`.  
- Adjust **process priorities** with `nice` and `renice`.  


## Commands, Outputs & Explanations

### 1. Viewing Processes with `top`
top

Output (sample):
top - 18:03:41 up 25 days, 19:14,  2 users,  load average: 0.00, 0.00, 0.00
Tasks: 124 total,   1 running, 123 sleeping,   0 stopped,   0 zombie
%Cpu(s):  3.1 us,  0.0 sy,  0.0 ni, 96.9 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :    904.8 total,     83.0 free,    416.3 used,    405.5 buff/cache
MiB Swap:      0.0 total,      0.0 free,      0.0 used.    342.5 avail Mem


Shows system load, memory, CPU usage, and active processes.
Example process listing included systemd, kthreadd, sleep, etc.

### 2. Killing Processes with kill
kill 1234
kill -9 1234

Output:
-bash: kill: (1234) - No such process
PID 1234 did not exist, so the command failed.
Lesson: Always check process IDs with ps or top before attempting to kill.

### 3. Killing by Process Name with pkill
pkill nginx

Output:
pkill: killing pid 192689 failed: Operation not permitted
pkill: killing pid 192728 failed: Operation not permitted

nginx processes could not be killed without elevated permissions (sudo).

### 4. Running Processes with nice
nice -n 10 sleep 300 &

Output:
[1] 1245243
Check the process:
ps -l | grep sleep

Output:
0 S  1000 1245243 1237785  0  90  10 - 55341 hrtime pts/2    00:00:00 sleep
The sleep process ran with nice value = 10, meaning it had lower priority.

### 5. Changing Process Priority with renice
sudo renice -5 -p 12080

Output:
renice: failed to get priority for 12080 (process ID): No such process
The specified PID did not exist.
Lesson: Always confirm PID exists before running renice.

## Summary:
top → Live process monitoring (CPU, memory, tasks).
kill / pkill → Terminate processes by PID or name. Requires correct PID and often sudo.
nice → Start a process with a given priority (-20 = highest, 19 = lowest).
renice → Adjusts priority of a running process.
Key Takeaway: Process management is about observing system resource usage, controlling processes when needed, and adjusting priorities to optimize performance.
