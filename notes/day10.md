# Day 10 Practice: Process Management in Linux

##Viewing Processes
- `ps` → Show current shell processes.
- `ps aux | less` → List all running processes with details.
- `top` → Display live running processes and resource usage.
- `htop` (if available) → Interactive process manager.

##Foreground & Background Jobs
- Run process in foreground: `sleep 60`
- Suspend process: **CTRL+Z**
- Resume in background: `bg`
- Bring back to foreground: `fg`
- List background jobs: `jobs`

##Killing Processes
- Find PID of process: `ps aux | grep sleep`
- Kill process: `kill <PID>`
- Force kill: `kill -9 <PID>`

##Process Priorities
- Start process with lower priority: `nice -n 10 sleep 100 &`
- Change priority of running process: `renice -n 5 -p <PID>`

##Key Takeaways
- Linux allows running, monitoring, suspending, and killing processes.  
- Foreground and background jobs help multitask in the shell.  
- Process priorities (`nice`, `renice`) control CPU resource allocation.  
- Tools like `top` and `htop` are essential for real-time system monitoring.

✅ **GitHub Documentation:** This file records my Day 10 Linux practice on process management.
