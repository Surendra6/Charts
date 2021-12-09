#!/usr/bin/env sh
set -e

npm run build

cd dist

git init 
git add -A
git commit -m "Deploy Charts"
git push -f git@github.com:Surendra6/charts.git master:gh-pages

cd -