#!/bin/zsh

input="oneOS.txt"

# Pattern {buffer,space}
# Hold {buffer,space}

echo "\n-- Exchange the content of the pattern and hold buffer"
sed 'x' $input

echo "\n-- Replace the pattern buffer into the hold buffer"
# Content in the hold buffer will be destroyed by this command

echo "\n-- Apend the pattern buffer after the hold buffer"
# Content in the hold buffer stays and pattern buffer appended after it

echo "\n-- Repalce the hold buffer into the pattern buffer"
# h <-> g
