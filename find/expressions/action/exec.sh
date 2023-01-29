#!/bin/zsh

source="../../Script"

# -prune, -delete, -quit
# Combinations: -{exec,ok}{dir,} '{}' {\;,+}
# execute without asking: exec, with asking: ok
# execute also on directory: , excluding directory: dir
# result in one line: +, in multiple lines: \;

echo "\n-- execute command excluding directories only on pwd"
find $source -iname file -prune -execdir ls {} \;

echo "\n-- Find and delete"
find $source -samefile ../../Script/owner -delete
