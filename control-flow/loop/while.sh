#!/bin/zsh

var=1
while (( $var < 10 ))
do
    printf "$var "
    var=$((var + 1))
done
