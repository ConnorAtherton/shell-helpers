#!/bin/bash

# Users with a UID equaling 0 have root privileges
ROOT_UID=0

# Run as root, of course.
if [ "$UID" -ne "$ROOT_UID" ]; then
  echo "Must be root to run this script."
  exit 1
fi