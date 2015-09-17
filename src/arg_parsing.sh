#!/bin/bash

#
# Generic arg parser function
#
arg_parse() {
  if test $# -eq 0; then
    # No args given..
    echo "no args given"
  else
    while test $# -ne 0; do
      case $1 in
        -V|--version) display_n_version ;;
        -h|--help|help) display_help; exit ;;
        -s|--switch) exit ;;
        # no exit so we continue
        -n|--number) shift; set_number $1;;
        # Use args as a splat
        rm|-) shift; remove_versions $@; exit ;;
      esac

      # Move the next arg given
      shift
    done
  fi
}
