#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <old_name> <new_name>"
    exit 1
fi

old_name=$1
new_name=$2
remote=origin

git branch -m "$old_name" "$new_name"

git push "$remote" --delete "$old_name"

git branch --unset-upstream "$new_name"

git push "$remote" "$new_name"
git push "$remote" -u "$new_name"
