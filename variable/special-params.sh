#!/bin/zsh

# `$*` and `$@`
# Give args in terminal: `sh this_script.sh 1 2 3 4`
echo "\$* catches: $*"
echo "\$@ catches: $@"

# `"$*"` and `"$@"`
# Give args in terminal: `sh this_script.sh 1 "2 3" 4`
# sh script.sh 1 "2 3" 4
#       "$*"  |_________|
#       "$@"  |__|___|__|
echo "\n-- case \"\$*\" --"
for item in "$*"
do
    echo $item
done


echo "\n-- case \"\$@\" --"
for item in "$@"
do
    echo $item
done
