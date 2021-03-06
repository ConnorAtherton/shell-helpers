#!/bin/bash

set -eu

PREVIOUS_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Working directory clean..
if [ -z "$(git status --porcelain)" ]; then
  echo "Deploying gh-pages..."

  git checkout -B gh-pages
  git merge master --no-edit

  if [[ $* == *-i* ]]; then
    echo "Modifying .gitignores..."
    ghpages-ignores
  fi

  # npm run build

  git add .
  git commit -m 'new build'
  git push origin gh-pages
  git checkout $PREVIOUS_BRANCH
else
  # Uncommitted changes
  echo "Uncommitted git changes! Deploy failed."
fi
