#!/bin/zsh

# `=` for equality check is not allowed.
if [ $1 -eq $2 ] || (( $1 == $2 )); then
    echo "$1 == $2"
fi

if [ $1 -ne $2 ] || (( $1 != $2 )); then
    echo "$1 != $2"
fi

if [ $1 -gt $2 ] || (( $1 > $2 )); then
    echo "$1 > $2"
fi

if [ $1 -ge $2 ] || (( $1 >= $2 )); then
    echo "$1 >= $2"
fi

if [ $1 -lt $2 ] || (( $1 < $2 )); then
    echo "$1 < $2"
fi

if [ $1 -le $2 ] || (( $1 <= $2 )); then
    echo "$1 <= $2"
fi

