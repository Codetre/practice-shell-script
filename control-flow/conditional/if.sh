#!/bin/zsh

num=$1

if [ $num -ge 0 -a $num -lt 10 ]
then
    echo "0 <= num < 10"
elif [ $num -ge 10 -a $num -lt 20 ]
then
    echo "10 <= num < 20"
else
    echo "20 <= num "
fi
