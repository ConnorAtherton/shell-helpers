#!/bin/bash

# A file is fresh if it was modified less than 2 minutes ago.
# The 2 minutes can be changed and should ideally last for as
# long as the test suite takes to run so we don't have to rebuild
#
_fresh_file() {
  local filemtime=`stat -c %Y $1`
  local currtime=`date +%s`
  local diff=$(( (currtime - filemtime) ))

  if [ $diff -gt ${2:-120} ] ; then
    return 1
  fi

  return 0
}

