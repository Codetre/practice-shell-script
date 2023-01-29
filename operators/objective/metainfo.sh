#!/bin/zsh

# arg1 is supposed to be filepath.
# arg2 is supposed to be dirpath.
file=$1

if [ -e $file ]; then
    echo "$file exists."
else
    echo "$file doesn't exist. Retry."
fi

# Which type of a file?
if [ -d $file ]; then
    echo "$dir is a directory."
fi

if [ -f $file ]; then
    echo "$file is a file."

    # is symlink?
    if [ -L $file ]; then
        echo "$file is also a symlink."
    fi

    # Not empty?
    if [ -s $file ]; then
        echo "$file has some data."
    else
        echo "$file is empty."
    fi

    # Ownership
    if [ -O $file ]; then
        echo "The script runner also has $file."
    fi

    if [ -G $file ]; then
        echo "The script runner's group also has $file"
    fi

fi

