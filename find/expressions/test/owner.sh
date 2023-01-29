#!/bin/zsh

source="../../Script"
# Get UID, GID: `id -u[g]`
my_uid=`id -u`
my_gid=`id -g`

echo "\n-- Find by user id"
find $source -uid $my_uid -ls

echo "\n-- Find by group id"
find $source -gid $my_gid -ls

echo "\n-- Find by uid not exist"
find $source -nouser

echo "\n-- Find by gid not exist"
find $source -nogroup
