# Strip color codes from a string
strip_colors() {
  sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
}
