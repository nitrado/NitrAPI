#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

mkdocs build --clean

git add site/
git commit -m "Update Documentation"
git push

cd "$DIR/.."

echo "Publish new Documentation"
git push origin `git subtree split --prefix documentation/site/ master`:gh-pages --force
