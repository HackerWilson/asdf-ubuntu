#!bash

name="asdf-ubuntu"
repo="vborja/$name"

gh_repo="vic/$name"
gh="https://github.com/$repo"

echo '| Status | Dockerfile |'
echo '|--------|------------|'
for i in $(curl  https://api.github.com/repos/$gh_repo/branches 2>/dev/null | jq -r .[].name); do
  echo -n "| [![Travis branch](https://img.shields.io/travis/$gh_repo/$i.svg)]($gh/tree/$i)"
  echo -n "| [\`FROM $repo:$i\`]($gh/blob/$i/Dockerfile) "
  echo '|'
done
