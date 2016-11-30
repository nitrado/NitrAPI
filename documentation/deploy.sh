#!/bin/bash

echo "Publish new Documentation"
git push origin `git subtree split --prefix documentation/site/ master`:gh-pages --force

