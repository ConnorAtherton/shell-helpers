#!/bin/bash

set -e

AUTHORS=$(git --no-pager shortlog -nse --no-merges | cut -f 2- )

if [ -z "$AUTHORS" ] ; then
  echo "There are no authors for this project."
  exit 1
fi
