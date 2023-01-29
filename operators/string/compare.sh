#!/bin/zsh

# Equality - Operators `=` and `==` are has interchangable usability.
if [[ $1 = $2 ]] || [[ $1 == $2 ]]; then
    echo "'$1' and '$2' are the same."
fi

# Non-equality
if [[ $1 != $2 ]]; then
    echo "'$1' and '$2' are different."
fi

if [[ $1 > $2 ]]; then 
    echo "'$1' is greater than '$2' in ASCII code."
fi

if [[ $1 < $2 ]]; then
    echo "'$1' is less than '$2' in ASCII code."
fi
