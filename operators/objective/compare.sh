#!/bin/zsh

file1=$1
file2=$2

if ! [ -e $file1 -a -e $file2 ]
then
    echo "Which one if the both files are missing."
fi

# Date created
if [ $file1 -nt $file2 ]; then
    echo "$file1 is newer than $file2."
fi

if [ $file1 -ot $file2 ]; then
    echo "$file1 is older than $file2."
fi

# Equality
if [ $file1 -ef $file2 ]; then
    echo "$file1 and $file2 are the same."
else
    echo "$file1 and $file2 are different."
fi
