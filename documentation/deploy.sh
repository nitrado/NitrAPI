#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR/.."

echo "Publish new Documentation"
git push origin `git subtree split --prefix documentation/site/ master`:gh-pages --force
