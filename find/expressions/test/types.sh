#!/bin/zsh

source="../../Script"

echo "\n-- Block file"
find $source -type b

echo "\n-- Character file"
find $source -type c

echo "\n-- Directory"
find $source -type d

echo "\n-- Named pipe"
find $source -type p

echo "\n-- file"
find $source -type f

echo "\n-- symlink"
find $source -type l

echo "\n-- socket"
find $source -type s
