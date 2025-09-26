# Day 11 Practice: Job Scheduling with at and systemd timers

##One-time job with `at`
 -I scheduled a command to run 2 minutes later using `at`:
  echo "echo 'This is a one-time job' >> ~/at_test.log" | at now + 2 minutes

 -Verified the job with:
  atq
  After execution, the output was logged into:
  ~/at_test.log

##Recurring job with systemd timers
  Amazon Linux 2023 uses systemd timers instead of cron.

 -Steps followed:
  Created a service unit:
  sudo nano /etc/systemd/system/hello.service
  hello.service:

[Unit]
Description=Hello World Service

[Service]
Type=oneshot
ExecStart=/bin/bash -c "echo 'Hello World from systemd timer' >> ~/timer_test.log"
Created a timer unit:


sudo nano /etc/systemd/system/hello.timer
hello.timer:


[Unit]
Description=Run Hello World every minute

[Timer]
OnUnitActiveSec=1min
Unit=hello.service

[Install]
WantedBy=timers.target

##Reloaded systemd and enabled the timer:
  sudo systemctl daemon-reload
  sudo systemctl enable --now hello.timer
Verified results:
Checked log file:
cat ~/timer_test.log
Listed active timers:
systemctl list-timers
