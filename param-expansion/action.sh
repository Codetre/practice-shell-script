#!/bin/zsh

# '-' for substitute.
echo "\$os is not defined."
echo "'-' " ${os-"macOS"}  # if (undef.), substitute.
echo "':-' " ${os:-"macOS"}  # if (undef.) or null, substitute.
echo "-----------------"

# '=' for re-assign.
echo "'=' " ${os="macOS"}  # if (undef.), re-assign.
echo "\$os now has $os, but make it unset."
unset os
echo "':=' " ${os:="Linux"}  # if (undef.) or null, re-assign.
echo "\$os now has $os."
echo "-----------------"

# '?' for error message when undefined or null.
unset os  # undefined
echo ${os?"Not defined"}
# Cannot reach the line below because the error occurs.
os=""  # null
echo ${os?"Null"}
