#!/bin/zsh

n1=3
n2=5

# This type requires to be covered by [a pair of single brackets].
if [ $n1 -ne $n2 ]; then
    echo "'-ne' operator"
fi

# This type requires to be covered by ((a pair of double parenthesis)).
if (( $n1 != $n2 )); then
    echo "'!=' operator"
fi
