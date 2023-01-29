#!/bin/zsh

source="../Script"

# Put options just after `find` and before all the other opt.
echo "\n-- File metainfo about referred file by symlink"
find -L $source -name express.txt -exec ls -l {} \;

echo "\n-- Inverse feature of '-L'(default)"
find -H $source -name express.txt -exec ls -l {} \;
