#!/bin/sh

gitbook build . --output=./build -f page
git co gh-pages
mv build .
git add --all
git commit -m "update"
git push origin gh-pages --force
