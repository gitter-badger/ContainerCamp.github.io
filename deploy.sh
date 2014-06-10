#!/bin/bash
echo "STASHING.."
git stash

echo "BUILDING.."
rm -Rf /tmp/jekyll-build
jekyll build --destination /tmp/jekyll-build

echo "DEPLOYING..."
git --git-dir /tmp/jekyll-build/.git init .
cd /tmp/jekyll-build/ && git add .
git --git-dir /tmp/jekyll-build/.git commit -m "deploying"
git --git-dir /tmp/jekyll-build/.git remote add origin git@github.com:DockerConfLondon/DockerConfLondon.github.io.git
git --git-dir /tmp/jekyll-build/.git push --force origin master
