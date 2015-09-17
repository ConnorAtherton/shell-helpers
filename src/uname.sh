#!/bin/bash

#
# Print the operating system name
# including all values.
#
uname() {
  $(uname -a)
}

#
# Find Operating system
#
os() {
  local os=

  case uname in
    Linux*) os=linux ;;
    Darwin*) os=darwin ;;
    SunOS*) os=sunos ;;
  esac

  echo "$os"
}

#
# Find current arch
#
arch() {
  local arch=

  case uname in
    *x86_64*) arch=x64 ;;
    *armv6l*) arch=armv6l ;;
    *armv7l*) arch=armv7l ;;
  esac

  echo "$arch"
}
