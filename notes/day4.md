# Day 4 Practice: Permission and Ownership

 **Create a file and write into it**
  ```bash
  echo "This is for day 4 practice" > test.txt

 **List file details**

 -ls -l test.txt
  Shows permissions, ownership, size, and timestamp. 

##Changing Permissions with chmod
 
 **Set file permissions to 600**

 -chmod 600 test.txt
  Owner can read & write, no access for others.
  (rw-------)

**Set file permissions to 644**

 -chmod 644 test.txt
  Owner can read & write, group and others can only read.
  (rw-r--r--)

 **Set file permissions to 755**

 -chmod 755 test.txt
  Owner can read, write & execute, group and others can read & execute.
  (rwxr-xr-x)

##Summary
  I practiced:
 -File creation and viewing details with ls -l
 -Changing file permissions with chmod
