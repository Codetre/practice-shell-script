#!/bin/zsh

file=$1

# Permissions the file owner has
if [ -r $file ]; then
    echo "$file has read perm."
fi

if [ -w $file ]; then
    echo "$file has write perm."
fi

if [ -x $file ]; then
    echo "$file has exec perm."
fi
