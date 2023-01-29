#!/bin/zsh

source="../../Script"

# Change: content or filename
# Modify: content

# Possible combinations: -{a,c,m}{min,time,newer}

echo "\n-- Access before n minutes"
find $source -amin 1 -ls

echo "\n-- Change before n*24 hours"
find $source -ctime 0 -ls

echo "\n-- Modify newer than a file"
find $source -mnewer ../../Script/owner

# Give two joined by AND operation in a, m, c: -newer{a,m,c}
echo "\n-- Access and modify newer than a file"
find $source -neweram ../../Script/owner -ls
