#!/bin/bash

enter_fullscreen() {
  tput smcup
  stty -echo
}

leave_fullscreen() {
  tput rmcup
  stty echo
}
