#!/bin/zsh

# default state: undefined.
echo "Variable \$os is not defined."
echo "'-' " ${os-"macOS"}  # if (undef.), substitute.
echo "'=' " ${os="macOS"}  # if (undef.), re-assign.
echo "\$os now has value '${os}', but unset it for a later use."
unset os
echo "-----------------"

# `:` means nullity
echo "':-' " ${os:-"macOS"}  # if (undef.) or null, substitute.
echo "':=' " ${os:="macOS"}  # if (undef.) or null, re-assign.
echo "\$os now has value '${os}'"
echo "-----------------"

# `+` means defined
echo "'+' " ${os+"Linux"}  # if defined, substitute.
echo "':+' " ${os:+"Linux"}  # if defined *and* not null, substitute.
