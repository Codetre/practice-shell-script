#!/bin/zsh

source="../../Script"

echo "\n-- satisfying all UGO has exact perm as specified."
find $source -perm 444 -ls 

echo "\n-- Any of three bit satisfies."
find $source -perm +466 -ls

echo "\n-- Each of three bits satisfies the given bit size."
find $source -perm -466 -ls

