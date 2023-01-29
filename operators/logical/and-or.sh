#!/bin/zsh

# arg1 and arg2 are supposed to be both boolean
# `true` or `false`.

# AND: -a &&
if [ $1 -a $2 ]; then
    echo "Both true on '-a'."
fi

if [[ $1 && $2 ]]; then
    echo "Both true on '&&'."
fi

# OR: -o ||
if [ $1 -o $2 ]; then
    echo "At least one of both is true on '-o'."
fi

if [[ $1 || $2 ]]; then
    echo "At least one of both is true on '||'."
fi
