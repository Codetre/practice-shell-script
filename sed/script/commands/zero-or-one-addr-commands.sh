#/bin/zsh

input="../../Sources/hosts"
script="./sed-script.txt"

echo "\n-- Load script from file"
sed -n -f $script $input

echo "\n-- Append string after address"
sed -n '/172.10.2.13/ { 
  # No trailing character allowed just after backslash
a \
172.10.2.14 test3.example.com
p
} # End the command with } at new line' $input

echo "\n-- Insert string before address"
sed -n '/172.10.2.13/ {
i \
172.10.2.14 test3.example.com
p
}' $input

echo "\n-- Quit"
sed -n '/172.10.2.13/ {
a \
172.10.2.14 test3.example.com
q
p
}' $input

echo "\n-- Read file and append it after address"
sed -n '/172.10.2.13/ {
r sed-read.txt
p
}' $input

