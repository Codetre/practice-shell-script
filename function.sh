#!/bin/zsh

function func_without_params() {
    echo "The function called."
}

func_without_params

function func_with_params() {
    echo $1 $2 $3
}

func_with_params "I have " 3 " apples."
