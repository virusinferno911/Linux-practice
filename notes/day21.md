# Day 21 Practice:  Systemd and Service Management

##Learning Objectives
- Understand what **systemd** is and its role in Linux.
- Manage services with `systemctl` (start, stop, restart, enable, disable).
- Check service status and logs.
- Explore persistence across reboots with `enable` and `disable`.
- Use `journalctl` to investigate logs for services.


## 1. Understanding Systemd
Systemd is the **system and service manager** for Linux distributions.  
It controls startup, services, dependencies, and integrates with logging.

Check version:
systemctl --version

Output:
systemd 252 (252.23-6.amzn2023)
+PAM +AUDIT +SELINUX -APPARMOR +IMA +SMACK +SECCOMP ...

## 2. Manage nginx service
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl reload nginx
sudo systemctl enable nginx
sudo systemctl disable nginx

Output (example from enabling):
Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /usr/lib/systemd/system/nginx.service.

Output (example from disabling):
Removed "/etc/systemd/system/multi-user.target.wants/nginx.service".

## 3. Service Status
systemctl status nginx

Output (active running service):
   nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Thu 2025-10-02 16:24:01 UTC; 1min 29s ago
   Main PID: 1196400 (nginx)
      Tasks: 3 (limit: 1057)
     Memory: 4.4M
        CPU: 117ms
     CGroup: /system.slice/nginx.service
             ├─1196400 "nginx: master process /usr/sbin/nginx"
             ├─1196409 "nginx: worker process"
             └─1196410 "nginx: worker process"

## 4. Logs with journalctl
journalctl -u nginx
journalctl -u nginx -f
journalctl -u nginx --since today

Sample Output:
Oct 02 16:23:41 systemd[1]: Stopping nginx.service - The nginx HTTP and reverse proxy server...
Oct 02 16:24:01 systemd[1]: Starting nginx.service - The nginx HTTP and reverse proxy server...
Oct 02 16:24:01 nginx[1196398]: nginx: configuration file /etc/nginx/nginx.conf test is successful
Oct 02 16:24:01 systemd[1]: Started nginx.service - The nginx HTTP and reverse proxy server.
Oct 02 16:24:20 systemd[1]: Reloaded nginx.service - The nginx HTTP and reverse proxy server.

## *SUMMARY*
-systemctl is the main tool for managing Linux services.
-enable and disable manage persistence across reboots.
-journalctl is essential for debugging and analyzing service logs.
-Mastering systemd is critical for Linux administration and troubleshooting.
