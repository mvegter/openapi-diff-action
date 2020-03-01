#!/bin/sh -l

echo "cd $GITHUB_WORKSPACE" | sh
echo "cp -r $GITHUB_WORKSPACE ../previous" | sh

echo "cd ../previous" | sh
echo "git reset --hard HEAD~" | sh

echo "cd $GITHUB_WORKSPACE" | sh
echo "npx openapi-diff $1 ../previous/$1" | sh
