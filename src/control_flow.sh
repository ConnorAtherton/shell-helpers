#!/bin/bash

n=0
until [ $n -ge 5 ]
do
  # The revision_id is stored within the first 150 bytes if the call is successful
  RAW_DIFF=$(echo {\"diff_id\": ${DIFF_ID}} | arc call-conduit differential.getdiff  --arcrc-file=$HOME/.arcrc --conduit-timeout=45 | head -c 150) >/dev/null 2>&1 && break
  sleep 15
  n=$(($n+1))

  if [ $n -ge 5 ]
  then
    echo "### The call to phabricator failed"
    exit 1
  fi
done
