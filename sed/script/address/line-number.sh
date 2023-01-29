#!/bin/zsh

source="../../Sources/hosts"

# script = 'address(where) command(do)' 
echo "\n-- Print a line at number"
sed -n '5 p' $source

echo "\n-- Print lines at start and every n from there"
sed -n '1~3 =' $source

echo "\n-- Last line"
sed -n '$ p' $source
