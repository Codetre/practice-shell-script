#!/bin/zsh

input="../../Sources/hosts"

echo "\n-- Address 'line,pattern'"
# lines [line,pattern]
sed -n '1,/^# Devel.*/ p' $input

echo "\n-- Address 'pattern,+line'"
sed -n '/^# Devel*/,+3 p' $input

echo "\n-- Address 'pattern,~line'"
sed -n '/^# Devel*/,~3 p' $input

echo "\n-- Adress 'pattern,pattern'"
# start pattern becomes first met line
# end pattern becomes last met line
sed -n '/192/,/192/p' $input
