#!/bin/zsh

source="../../Script"

echo "\n-- Empty"
find $source -empty -ls

echo "\n-- Unit: Byte"
find $source -size 224c -ls

echo "\n-- Unit: KB"
find $source -size 64k -ls

echo "\n-- Unit: MB"
find $source -size 1M -ls

echo "\n-- Unit: GB"
find $source -size 1G -ls
