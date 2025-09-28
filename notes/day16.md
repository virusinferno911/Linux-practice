# Day 16 Practice: File Permissions in Linux

##Changing Ownership

ls -l test.txt
Output:
-rwxr-xr-x. 1 ec2-user ec2-user 18 Sep 28 11:51 test.txt

sudo chown root test.txt
ls -l test.txt
Output:
-rwxr-xr-x. 1 root ec2-user 18 Sep 28 11:51 test.txt

Owner changed to root.
sudo chown ec2-user:docker test.txt
ls -l test.txt
Output:
-rwxr-xr-x. 1 ec2-user docker 18 Sep 28 11:51 test.txt

Owner is ec2-user, group is docker.
sudo chgrp wheel test.txt
ls -l test.txt
Output:
-rwxr-xr-x. 1 ec2-user wheel 18 Sep 28 11:51 test.txt
Group changed to wheel.

##Changing Permissions
chmod 644 test.txt
ls -l test.txt
Output:
-rw-r--r--. 1 ec2-user wheel 18 Sep 28 11:51 test.txt

Owner = read/write, Group = read, Others = read.
chmod 600 test.txt
ls -l test.txt
Output:
-rw-------. 1 ec2-user wheel 18 Sep 28 11:51 test.txt

Only owner can read/write.
chmod 755 test.txt
ls -l test.txt
Output:
-rwxr-xr-x. 1 ec2-user wheel 18 Sep 28 11:51 test.txt

Owner full access, others read/execute.
chmod u+x test.txt
chmod g-w test.txt
chmod o+r test.txt
ls -l test.txt
Output:
-rwxr-xr-x. 1 ec2-user wheel 18 Sep 28 11:51 test.txt
Demonstrated symbolic mode changes.

##Special Permissions
Create a test script
echo -e '#!/bin/bash\necho "Hello World"' > script.sh
chmod +x script.sh
ls -l script.sh
./script.sh
Output:
-rwxr-xr-x. 1 ec2-user ec2-user 31 Sep 28 12:05 script.sh
Hello World

SetUID (run as file owner)
sudo chmod 4755 script.sh
ls -l script.sh
Output:
-rwsr-xr-x. 1 ec2-user ec2-user 31 Sep 28 12:05 script.sh
s in user section = SetUID.

SetGID (run with group’s permissions)
mkdir dir
sudo chmod 2755 dir
ls -ld dir
Output:
drwxr-sr-x. 2 ec2-user ec2-user 23 Sep 28 12:06 dir
s in group section = SetGID.

Sticky Bit (only owner can delete inside)
mkdir shared_dir
sudo chmod +t shared_dir
ls -ld shared_dir
Output:
-drwxr-xr-t. 2 ec2-user ec2-user 6 Sep 28 12:07 shared_dir
t at the end = Sticky Bit.

##Key Notes
chown user file → change owner
chown user:group file → change owner & group
chgrp group file → change group only
chmod → change permissions
4755 → SetUID
2755 → SetGID
+t → Sticky Bit
