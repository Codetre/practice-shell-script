#!/bin/zsh

template="I'll give you"
echo "Which fruit you like?"
echo "1) apple 2) banana 3) kiwi"
read choice

case $choice in 
    "apple")
        echo "$template apples.";;
    "banana")
        echo "$template bananas.";;
    "kiwi")
        echo "$template kiwis.";;
    *)
        echo "I don't understand you."
esac

