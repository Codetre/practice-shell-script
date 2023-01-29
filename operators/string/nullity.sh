#!/bin/zsh

if [ -z $1 ]  # check nullity
then
    echo "'$1' is null."
else
    echo "'$1' is not null."
fi

if [ -n $2 ]  # check non-nullity
then
    echo "'$2' is not null."
else
    echo "'$2' is null."
fi
