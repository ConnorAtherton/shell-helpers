#!/bin/bash

#
# Move up a line and erase.
# Leaves the cursor at the start of the line.
#

clear_line() {
  printf "\033[1A\033[2K"
}

#
# Clears the whole screen.
# Leaves the cursor in the upper left corner
#
clear_screen() {
  printf "\e[2J\e[H"
}

#
# Moves the cursor to a specific point on the display
#
move_cursor_to() {
  printf "\e[${1};${2}H"
}

#
# Find the screen size of the current TTY
#
screen_size() {
  stty size
}

num_cols() {
  screen_size | awk '{ print $2 }'
}

num_rows() {
  screen_size | awk '{ print $1 }'
}
