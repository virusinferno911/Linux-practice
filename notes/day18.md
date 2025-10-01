# Day 18 – Managing Services with systemd

Today I practiced how to manage services on Linux using **systemd** (`systemctl` and `journalctl`).

## 1. Check service status
systemctl status sshd
sshd was active (running) since Sept 7.

Confirmed it is enabled (starts on boot).
Logs showed multiple SSH login attempts.

2. Start / Stop / Restart / Reload a service
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl reload nginx

Start – launches the service.
Stop – shuts it down.
Restart – clean restart.
Reload – reloads config without downtime.

3. Enable and Disable service at boot
sudo systemctl enable nginx
sudo systemctl disable nginx

enable → nginx will start automatically on boot.
disable → nginx removed from autostart.

4. List services
systemctl list-unit-files --type=service | head
systemctl --type=service --state=running
Listed all installed service unit files.

Checked actively running services (e.g., docker, auditd, nginx, sshd).

5. View service logs
journalctl -u nginx --since "10 min ago"

Showed history of start, stop, and reload events.
Verified nginx config was tested successfully:
nginx: configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful

##Key Takeaways
-systemctl controls service lifecycle.
-enable/disable manages autostart on boot.
-journalctl helps view logs and troubleshoot services.
-Learned to manage sshd and nginx like a pro.
