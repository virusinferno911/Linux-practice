# Day 14 Practice: Process Monitoring & Resource Usage

## Monitoring Processes with `top`
- Ran:
  top
Learned how to sort by memory (M), CPU (P), and quit (q).

##Interactive Process Monitoring with htop
Installed and launched htop:
sudo dnf install -y htop
htop
Verified it was already installed.

Observed live process list with CPU/memory usage and interactive controls (F9 to kill).

Memory Usage with free
Checked memory:
free -h
Output:

Mem:  904Mi total, 411Mi used, 115Mi free, 377Mi buff/cache, 340Mi available
Swap: 0B
No swap configured.

##Disk Usage with df
Checked filesystem usage:
df -h
Output summary:
Root (/) → 8.0G total, 3.0G used, 5.0G free (38%).
/boot/efi → 10M total, 1.3M used.

##Disk I/O with iostat
Ran:
iostat -xz 1 3
Output showed very low activity (system mostly idle).

Example snapshot:

%user 0.12  %system 0.08  %idle 99.78
nvme0n1 → minimal read/write activity

##System Activity with vmstat
Ran:
vmstat 1 5
Output summary:

r (running processes): 0 (system not overloaded).
id (CPU idle): ~99–100% idle.
Very light system usage.

##SUMMARY
-top and htop → live process monitoring.
-free → memory stats, including available vs. used.
-df → disk space usage per mount point.
-iostat → disk I/O performance monitoring.
-vmstat → quick overview of CPU, memory, and process activity.

This helps in diagnosing performance issues and monitoring system health in real time.
