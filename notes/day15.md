# Day 15 Practice: User & Group Management

##Check current user & identity
- Verified logged-in user:
  whoami
  id
  groups
Output showed ec2-user with groups: adm, wheel, systemd-journal, docker.

##Create a new user
Created user student with home directory and bash shell:
sudo useradd -m -s /bin/bash student
sudo passwd student

Successfully switched to the new user:
su - student
whoami   # confirmed "student"

##Create a new group & add user
Added a new group devops and included student:
sudo groupadd devops
sudo usermod -aG devops student
groups student   # student devops

##Delete user & group
Removed the test user and group:
sudo userdel -r student
sudo groupdel devops

##Check system users and groups

-Last entries in /etc/passwd:
ec2-user:x:1000:1000:EC2 Default User:/home/ec2-user:/bin/bash
nginx:x:992:991:Nginx web server:/var/lib/nginx:/sbin/nologin
OluwasheyiOjelade:x:1001:1001::/home/OluwasheyiOjelade:/bin/bash

-Last entries in /etc/group:
ec2-user:x:1000:
docker:x:992:ec2-user
nginx:x:991:
OluwasheyiOjelade:x:1001:
practicegrp:x:1002:OluwasheyiOjelade

Summary:
Learned to manage users and groups:

-Checked identity
-Created/deleted users and groups
-Assigned users to groups
-Verified in system files /etc/passwd and /etc/group
