# Day 24 Practice: System Monitoring & Process Utilities (Part 2)

## 1. Check system uptime & load averages
uptime
Output:
16:38:27 up 26 days, 17:48,  2 users,  load average: 0.01, 0.02, 0.00
Shows system uptime, users, and load average (1, 5, 15 min).

## 2. Monitor live system statistics
vmstat 2 5
Output snippet:
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
0  0      0  88588    840 415508    0    0     1    19    3    7  0  0 100  0  0

Shows CPU, memory, I/O, and swap usage every 2 seconds (5 times).

## 3. CPU & I/O performance (requires sysstat)
iostat -x 2 3

Highlights:
%user, %iowait, %idle = CPU usage breakdown
nvme0n1 = main disk device (read/write performance)

Output (example):
avg-cpu:  %user %system %iowait %idle
           0.12    0.08    0.01  99.77
Device: nvme0n1  r/s w/s %util
           0.04 1.25  0.02

## 4. CPU utilization over time
sar -u 2 5
Output:
Average:  %user 0.20  %system 0.15  %idle 99.65
CPU is mostly idle — indicating low system load.

## 5. Memory usage report
sar -r 2 5
Output (MB):
kbmemfree   kbavail kbmemused  %memused
112400      361252    356240     38.45

## 6. Network interface statistics
sar -n DEV 2 5
Output:
IFACE   rxpck/s   txpck/s  rxkB/s  txkB/s
ens5        1.80      5.60    0.11    2.03

Shows network packets and data rates per interface (ens5, docker0, etc).

## 7. Memory usage overview
free -m
Output:
Mem:   total  used  free  shared  buff/cache  available
       904    406   108       0        389         351

## 8. Combined monitoring (quick snapshot)
uptime && vmstat 1 3 && iostat -x 1 2

Combines uptime, system performance, and I/O stats in one view.

### SUMMARY:
-uptime → Load & uptime overview
-vmstat → Real-time CPU/memory/swap stats
-iostat → Disk & CPU I/O performance
-sar → Time-based performance monitoring
-free → Memory summary
-Combined usage → Efficient system health diagnostics
