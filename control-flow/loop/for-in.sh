#!/bin/zsh

# Array
array=(1 2 3)
for item in ${array[@]}
do
    printf "$item "
done; echo

# String
for syllable in do re mi
do 
    printf "$syllable "
done; echo

# Object: "./*"
path="./*"
for file in $path
do
    printf "$file "
done; echo

# {beg..end}, 
for n in {1..10}
do
    printf "$n "
done; echo
