#!/bin/zsh

source="../../Sources/hosts"

echo "\n-- /regexp/"
sed -n '/test[0-9].*/ p' $source

echo '\n-- \{ch}<regexp>{ch}'
# char in {} should be not used in the pattern.
sed -n '\ctest[0-9].*c p' $source
