#!/bin/zsh

# Do not put the pos-arg on the very after `find`.

source="../Script"

echo "\n-- depth first search"
find -d $source 

# depth level 0: search path itself
# depth level 1: path/*
# depth level 2: path/lv1/lv2
echo "\n-- Set {min,max} depth"
find $source -mindepth 0 -maxdepth 1 
