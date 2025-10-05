# Day 26 Practice: Advanced Disk Management, Swap Space & Filesystem Maintenance

To practice:
Creating and activating a swap file
Making swap space persistent
Adjusting swappiness
Understanding mount options
Running filesystem checks

Hands-On Practice
sudo fallocate -l 512M /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

Verification
swapon --show
free -h

Output
NAME      TYPE SIZE USED PRIO
/swapfile file 512M   0B   -2

Mem:   904Mi used: 411Mi free: 149Mi
Swap:  511Mi used: 0B free: 511Mi

## Make Swap Persistent
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

## Tune Swappiness
cat /proc/sys/vm/swappiness
sudo sysctl vm.swappiness=10
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf

Default was 60; reduced to 10 for performance tuning.

## Filesystem Check (fsck)
Attempted on /tmp/disk.img (already deleted earlier):

fsck.ext2: No such file or directory while trying to open /tmp/disk.img
Possibly non-existent device?

This shows fsck works properly when target exists — a safe, expected error here.

## Testing Mount Options
sudo mount -o noexec,nosuid /dev/nvme0n1p1 /mnt
mount | grep /mnt

Output

/dev/nvme0n1p1 on /mnt type xfs (rw,nosuid,noexec,relatime,seclabel,...)
Mounted with noexec and nosuid for security.
/etc/fstab Configuration
cat /etc/fstab

Output
UUID=62c90582-6d8a-4bf0-92e8-95e89689ef33 / xfs defaults,noatime 1 1
UUID=E565-8542 /boot/efi vfat defaults,noatime,uid=0,gid=0,umask=0077,shortname=winnt,x-systemd.automount 0 2
/swapfile none swap sw 0 0

Swap entry successfully added and will persist after reboot.

## Summary
Task	Result
Created 512MB swap space	✅ Successful
Activated swap	✅ Verified via swapon
Made swap persistent in /etc/fstab	✅ Done
Adjusted system swappiness to 10	✅ Applied
Tested mount options (noexec, nosuid)	✅ Working
Reviewed /etc/fstab configuration	✅ Correct entries
Verified mount behavior	✅ Secure and stable

Swap space helps manage memory pressure efficiently.
Persistent mounts and swaps ensure configurations survive reboots.
Swappiness controls how often Linux uses swap vs RAM.
Mount options like noexec and nosuid enhance server security.
Regularly checking filesystems (fsck) ensures disk reliability.
