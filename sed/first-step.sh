#!/bin/zsh

# sed <opt> <script> <input>
# script = address + command

echo "\n-- Basic usage"
sed 's/#PermitRoot/PermitRoot/' /etc/ssh/sshd_config | grep '^PermitRoot'

echo "\n-- Read script from file"
sed -f sed-script.txt /etc/ssh/sshd_config | grep '^PermitRoot'

echo "\n-- Piped input"
cat /etc/ssh/sshd_config | sed -f sed-script.txt | grep '^PermitRoot'
