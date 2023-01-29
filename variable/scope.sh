#/bin/zsh

variable="global"

function foobar() {
    local variable="local"

    echo $variable
}

foobar  # Note calling function without parenthesis.
echo "$variable"
