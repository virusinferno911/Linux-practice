# Day 20 Practice: System Monitoring & Logging

Today’s focus was on monitoring system performance, checking running processes, and reading logs. These are key skills for system administration and troubleshooting.


## 1. System Performance Monitoring
top
Displays running processes, CPU & memory usage.
Press q to quit.

htop
User-friendly alternative to top.

uptime
Shows how long the system has been running and load averages.

free -h
Displays memory usage in human-readable format.

df -h
Shows disk space usage of all mounted filesystems.

du -sh /var/log
Shows total size of /var/log directory.

## 2. Checking Running Processes
ps aux
Lists all processes with details.

pgrep nginx
Finds process IDs of nginx.

kill -9 <PID>
Force kills a process by its PID.

## 3. System Logs
Logs are stored in /var/log/.

ls /var/log
Lists available logs.

cat /var/log/messages
General system messages.

cat /var/log/secure
Security/authentication logs.

journalctl -xe
Detailed systemd logs.

tail -f /var/log/messages
Live follow logs as they update.

## *SUMMARY* 
-top/htop are essential for real-time monitoring.
-df and du help track disk usage.
-Logs in /var/log/ and journalctl are critical for troubleshooting.
-Always monitor logs during service restarts or issues.
