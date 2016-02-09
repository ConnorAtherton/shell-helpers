#!/bin/bash

n=0
maxCalls=5
while true; do
  # The revision_id is stored within the first 150 bytes if the call is successful

  # >> perform some action here and break if successful

  n=$(($n+1))
  sleep 15

  if [ $n -ge $maxCalls ]; then
    echo "Too many failed failed calls"
    exit 1
  fi
done
