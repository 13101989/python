#!/bin/bash

rm -rf build docs
echo "build and docs folders were removed"
make html
cp -r build/html/. docs
git add .
git commit -m "new build"
git push origin master