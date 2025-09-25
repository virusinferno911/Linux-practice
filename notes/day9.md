# Day 9 – Advanced Permissions (setuid, setgid, sticky bit)

Today’s practice focused on advanced Linux file and directory permissions.  

## Steps Practiced

 **File permissions**
   - Created two files:
     echo "This is file1" > file1.txt
     echo "This is file2" > file2.txt
     
   - Applied restrictive and permissive modes:
     chmod 600 file1.txt   # Owner: read/write only
     chmod 777 file2.txt   # Everyone: read/write/execute
     

 **setuid**
   - Created a script:
     echo -e '#!/bin/bash\necho "Running as: $(whoami)"' > testscript.sh
     chmod 755 testscript.sh
     chmod u+s testscript.sh
     
   - Verified with:
     ls -l testscript.sh
     # -rwsr-xr-x  (note the 's' in user field)
     

 **setgid**
   - Created a directory with setgid:
     mkdir setgid_dir
     chmod g+s setgid_dir
     ls -ld setgid_dir
     # drwxr-sr-x
     
   - Any new files inside inherit the group:
     touch setgid_dir/testfile.txt
     ls -l setgid_dir/
     

 **Sticky bit**
   - Created a world-writable directory:
     mkdir sticky_dir
     chmod 777 sticky_dir
     chmod +t sticky_dir
     ls -ld sticky_dir
     # drwxrwxrwt
     

 **Cleanup**
   rm -rf ~/linux-practice/week2/day9_test
