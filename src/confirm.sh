#!/bin/bash

confirm() {
  read -p "$1 (y/n): " choice
  case "$choice" in
    y|Y ) echo "1" ;;
    n|N ) echo "0" ;;
    * ) echo "-1"  ;;
  esac
}
