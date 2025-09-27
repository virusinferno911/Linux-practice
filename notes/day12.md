# Day 12 Practice: Process Monitoring & System Logging

##Process Monitoring

### top (real-time)
- Start:
  top
Notes:

Shows CPU%, MEM%, load, and top processes.

Press q to quit.

Press P to sort by CPU, M to sort by memory.

htop (interactive, optional)
Install (if not installed):


sudo dnf install -y htop
Start:

htop
Notes:

Use arrow keys to navigate, F6 to sort, F9 to kill a process.

Nice UI for quick exploration.

ps (snapshot)
Quick snapshot of processes:

ps aux | head -n 20
Find a process by name:

ps -ef | grep <process-name>
systemctl (services)
Check a specific service (example: sshd):

systemctl status sshd
List running services:

systemctl list-units --type=service --state=running

##System Logging with journalctl
Full system journal (scrollable)
journalctl
Controls: SPACE to page, q to quit.

Logs for a specific service (e.g., sshd)
journalctl -u sshd
Logs from current boot only
journalctl -b
Follow logs in real time (like tail -f)
journalctl -u sshd -f
Show the last N lines
journalctl -u sshd -n 50
Time-window filtering
journalctl --since "2025-09-24 10:00" --until "2025-09-24 11:00"
If you need root permissions (some logs restricted)
sudo journalctl -u sshd -n 50

##Practice Tasks (run these step-by-step)
Open a monitoring session:
top
Observe CPU/MEM and top processes, then quit (q).

(Optional) Install and run htop:
sudo dnf install -y htop
htop
Check service status for sshd:


systemctl status sshd

 -View recent sshd logs and follow them:
journalctl -u sshd -n 30
journalctl -u sshd -f
Open a second terminal and make an SSH action (e.g., a new login) to see live updates.

 -Get system-wide diagnostics:
journalctl -b -n 100
uptime
free -h
df -h
