# Day 25 Practice: Disk Management & Filesystems

Today’s goal is to understand how to view, manage, and mount disks in Linux.  
I learn about block devices, filesystems, mounting, and disk utilization.-

##Step-by-Step Learning & Practice

### 1. View Disk and Partition Information
lsblk
Output:
pgsql
Copy code
NAME          MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS
nvme0n1       259:0    0   8G  0 disk 
├─nvme0n1p1   259:1    0   8G  0 part /
├─nvme0n1p127 259:2    0   1M  0 part 
└─nvme0n1p128 259:3    0  10M  0 part /boot/efi
lsblk lists available block devices, partitions, and where they are mounted.

### 2. Display Detailed Disk Info
sudo fdisk -l

Output:
Disk /dev/nvme0n1: 8 GiB, 8589934592 bytes, 16777216 sectors
Disk model: Amazon Elastic Block Store              
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disklabel type: gpt
Disk identifier: C17462F8-7910-4F82-A825-D0E2C25A08AC

Device           Start      End  Sectors Size Type
/dev/nvme0n1p1   24576 16777182 16752607   8G Linux filesystem
/dev/nvme0n1p127 22528    24575     2048   1M BIOS boot
/dev/nvme0n1p128  2048    22527    20480  10M EFI System

This shows partitions, sizes, and types.

### 3. Check Mounted Filesystems
df -h

Output:
Filesystem        Size  Used Avail Use% Mounted on
devtmpfs          4.0M     0  4.0M   0% /dev
tmpfs             453M     0  453M   0% /dev/shm
tmpfs             181M  564K  181M   1% /run
/dev/nvme0n1p1    8.0G  3.5G  4.6G  43% /
tmpfs             453M     0  453M   0% /tmp
/dev/nvme0n1p128   10M  1.3M  8.7M  13% /boot/efi
tmpfs              91M     0   91M   0% /run/user/1000

Shows filesystem usage, available space, and mount locations.

### 4. View Current Mounts in Detail
mount | column -t

Output (truncated for readability):
/dev/nvme0n1p1    on  /         type  xfs   (rw,noatime,seclabel,...)
/dev/nvme0n1p128  on  /boot/efi type  vfat  (rw,noatime,fmask=0077,...)
overlay           on  /var/lib/docker/... type overlay (rw,relatime,...)

This shows all mounted filesystems, their types, and mount options.

### 5. Create a Directory for Mounting
sudo mkdir /mnt/demo_disk

### 6. Create a Virtual Disk Image for Practice
sudo dd if=/dev/zero of=/tmp/disk.img bs=1M count=100

Output:
100+0 records in
100+0 records out
104857600 bytes (105 MB, 100 MiB) copied, 0.0409951 s, 2.6 GB/s

This creates a 100MB blank file that we’ll treat like a disk.

### 7. Format the Disk Image
sudo mkfs.ext4 /tmp/disk.img

Output:
mke2fs 1.46.5 (30-Dec-2021)
Creating filesystem with 102400 1k blocks and 25584 inodes
Filesystem UUID: fe3c7deb-b5d5-4d22-bd02-ad5a391bdd70
...
Writing superblocks and filesystem accounting information: done 

### 8. Mount the Virtual Disk
sudo mount -o loop /tmp/disk.img /mnt/demo_disk

Check the mount:
df -h | grep demo_disk

Output:
/dev/loop0         89M   14K   82M   1% /mnt/demo_disk

### 9. Create a File on the Mounted Disk
sudo touch /mnt/demo_disk/testfile.txt
sudo ls -l /mnt/demo_disk

Output:
total 12
drwx------. 2 root root 12288 Oct  5 21:13 lost+found
-rw-r--r--. 1 root root     0 Oct  5 21:15 testfile.txt

### 10. Unmount and Clean Up
sudo umount /mnt/demo_disk
sudo rm -rf /mnt/demo_disk /tmp/disk.img

## Summary
Command	Purpose
-lsblk	Lists available disks and partitions
-fdisk -l	Displays detailed disk info
-df -h	Checks disk usage and mounted paths
-mount	Mounts a filesystem
-umount	Unmounts a filesystem
-mkfs.ext4	Formats disk with EXT4 filesystem
-dd	Creates data files or virtual disks
-/mnt	Common directory used as a mount point

Mounting connects a filesystem to a directory.
Unmounting safely detaches it.
You can simulate disks using loopback files for safe practice.
Real-world admins use these same commands to manage attached storage volumes (like AWS EBS).
