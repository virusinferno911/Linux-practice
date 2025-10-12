# Day 27 Practice: Linux System Logging & Log Management

## Objective:
To understand how Linux records, manages, and rotates system and application logs using **rsyslog**, **systemd-journald**, and **logrotate**.  
This is a key skill for troubleshooting, performance monitoring, and DevOps observability.

## Concepts Covered
- Role and structure of Linux log files.
- Differences between **rsyslog**, **journald**, and **logrotate**.
- How to view, filter, and analyze logs effectively.
- How to create and verify custom log entries.
- Understanding automated log rotation and compression.

## Commands Practiced

### 1. Explore Log Files
cd /var/log
ls -l

# Common log files:
/var/log/messages — general system messages
/var/log/secure — authentication and security logs
/var/log/boot.log — boot process
/var/log/dnf.log — package management logs

### 2. View & Filter Logs
sudo tail -f /var/log/messages
sudo less /var/log/secure
sudo grep "sshd" /var/log/secure

tail -f: monitors logs in real time
grep: filters specific keywords

### 3. Systemd Journal (journalctl)
sudo journalctl -xe
sudo journalctl -u sshd.service
sudo journalctl --since "1 hour ago"
sudo journalctl -p err

Query and analyze logs managed by systemd-journald.

### 4. Manage Log Rotation
cat /etc/logrotate.conf
ls /etc/logrotate.d/

logrotate automatically compresses and rotates logs to prevent disk overuse.

### 5. Generate a Custom Log Entry
logger "Day 27 test log entry: Linux logging practice successful!"
sudo tail -n 5 /var/log/messages

Confirms how applications and users can add custom log entries.

## Summary:
-Understood Linux logging architecture.
-Practiced viewing, filtering, and analyzing logs in /var/log.
-Created custom log entries with logger.
-Learned how logs are rotated automatically for maintenance.

## Reflection
Today’s session emphasized how crucial log management is for diagnosing system issues.
Understanding where logs are stored and how to interpret them provides better visibility into how Linux behaves under the hood.
