#!/bin/zsh

input="../../Sources/hosts"

script="sed-script1.txt"

echo "\n-- Branch to label"
# <pattern> b <label>
# If current line matches conditional <pattern>, branch to the <label>
sed -n -f $script $input

echo "\n-- Change the matching part, not the whole line"
sed -n '{
# Any trailing character after the backslash becomes an error
/service.e/ c \
122.10.30 vip.service.example.com
p
}' $input

echo "\n-- Delete the lines: 'd' ignores newline character"
sed -n '1,/NaleeJang/ {
s/We will test to replace/We will test to \nreplace/
/test/ d
p
}' $input

echo "\n-- Delete the lines 2: 'D' removes until newline character"
sed -n '1,/NaleeJang/ {
s/We will test to replace/We will test to \nreplace/
/test/ D
p
}' $input

echo "\n-- Replace hold buffer content with pattern buffer's"
sed -n '/Product/,+3 {
s/Production/Service/
h
p
}' $input

echo "\n-- Append pattern buffer content to hold buffer's.\n \
    The Two of them are separated by a new line character."
sed -n '/Product/,+3 {
s/Production/Service/
H
p
}' $input

echo "\n-- Replace pattern buffer content with hold buffer's"
# Reverse of 'h' command
sed -n  '/Product/,+3 {
s/Production/Service/
g
p
}' $input

echo "\n-- Append hold buffer content to pattern buffer's."
# Rever of 'H' command
sed -n '/Product/,+3 {
s/Production/Service/
G
p
}' $input

echo "\n-- Print read lines with ending character"
sed -n '/Product/,+3 l' $input  # Each line ends with '$'

echo "\n-- Copy next line"
sed -n '/Product/,+3 {
p
N
l
}' $input
