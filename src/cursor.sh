#!/bin/bash

#
# Hide cursor.
#

hide_cursor() {
  printf "\e[?25l"
}

#
# Show cursor.
#

show_cursor() {
  printf "\e[?25h"
}
