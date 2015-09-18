#!/bin/bash

# Bash variables are untyped and are stored
# as character strings. However, a variable
# may be treated as another type in arithmetic
# or comparison operators.
#
# It is treated as an integer if the value contains
# only digits.

# Set a variable to null.
# It has no value but is evaluated
# as 0 in arithemetic operations.
variable=
variable=''
variable=""

# Assignement with and without let
variable=3
let variable=3

# Assigning the return value of a command
# executed in the shell
variable=`ls`
# a newer version of command substitution
variable=$(ls)

# Quoting preserves whitespace
echo $a
echo "$a"

# We can make constants using the `readonly`
# built-in
# readonly OPTION VARIABLE(s)
readonly constant=3

# Can't add spaces around `=`.

# Tries to call the command `value` with
variable =value

# Sets the environment variable `variable`
# to null and calls the command `value`
variable= value

# unset a variable back to null
unset variable
