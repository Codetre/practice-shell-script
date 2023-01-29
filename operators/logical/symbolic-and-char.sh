#!/bin/zsh

if [ $1 -gt $2 -o $1 -eq $2 ]; then
    echo "$1 < $2 -o $1 == $2"
fi

if [[ $1 < $2 || $1 == $2 ]]; then
    echo "$1 < $2 || $1 == $2"
fi
