# Day 8 Practice: Archiving and Compression

### Steps Practiced

 -Created a test directory and files**
  mkdir -p ~/linux-practice/week2/day8_test
  cd ~/linux-practice/week2/day8_test
  echo "File A" > FileA.txt
  echo "File B" > FileB.txt
  echo "File C" > FileC.txt
  ls -l
  Result: 3 files (FileA.txt, FileB.txt, FileC.txt) created.

 -Archived files into a tarball
  tar -cvf files_archive.tar FileA.txt FileB.txt FileC.txt
  Output: archive created containing all 3 files.

 -Verified contents of archive
  tar -tvf files_archive.tar
  Output listed all 3 files with their metadata.

 -Compressed the archive
  gzip files_archive.tar
  ls -lh
  Result: files_archive.tar.gz created (compressed version of archive).

 -Extracted compressed archive
  tar -xvzf files_archive.tar.gz
  Output: extracted FileA.txt, FileB.txt, FileC.txt.

 ###Summary

 -Today I learned how to:
  *Create multiple test files.
  *Archive files using tar.
  *Verify archive contents.
  *Compress archives with gzip.
  *Extract files from a compressed .tar.gz archive.
