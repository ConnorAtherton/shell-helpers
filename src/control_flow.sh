#!/bin/bash

n=0
while true; do
  # The revision_id is stored within the first 150 bytes if the call is successful

  # >> perform some action here and break if successful

  n=$(($n+1))
  sleep 15

  if [ $n -ge 5 ]; then
    echo "Too many failed failed calls"
    exit 1
  fi
done
