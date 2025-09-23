# Day 7 Practice: File System, Disk Usage & Find Command

 -Exploring System Directories
  Navigated to `/etc` using:
  cd /etc
  pwd
  ls -l
  Learned that /etc contains system-wide configuration files (like passwd, shadow, group, etc.).
 
 -Created test directory for practice
  mkdir -p ~/linux-practice/week2/day7_test
  cd ~/linux-practice/week2/day7_test

 -Created sample files
  echo "file1" > file1.txt
  echo "file2" > file2.txt

 -Checked disk usage with du
  du -sh file1.txt → size of one file
  du -sh → size of directory

 -Checked overall filesystem space with df -h
  Saw details like size, used, available, mount points.

 -Located files using find
  find -name file1.txt
  find -name file2.txt
