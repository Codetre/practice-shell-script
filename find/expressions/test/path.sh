#!/bin/zsh

source="../../Script"

# Find {file,path,symlink} by {pattern,inode,filename}.
# (some combinations are invalid)

echo "\n-- Find files by pattern('file') ignoring case"
find $source -iname file 

echo "\n-- Find paths by pattern. The whole path should match the pattern."
find $source -iregex .*file.*

# Get file's inode: first column `ls -i <file>`
echo "\n-- Find files by its inode"
find $source -inum 10553901

echo "\n-- Find hardlinks referring the specified name"
find $source -samefile ../../Script/owner
