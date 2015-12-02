# Shell scripting style guide

A standard guideline. These rules are by no means set in stone. This
is intended as a community effort to standardise our shell scripts
and achieve consistency.

## Structure

Always place a hashbang at the start of the file and try to
use the format

```shell
#!/bin/bash
```

over

```shell
#!/usr/bin/env bash
```

### File structure

The file should be structured this way.

```shell
# hashbang
#!/bin/bash

# set options
set -e

# constants
CONSTANT=1

# functions
test_function() {
 :
}

main() {
 :
}


# main invocation (if it is a long script"
main "$@"

```

### formatting

Indention should be 2 spaces with a maximum line-length of 80 characters.

## Conditionals

Include one space before the condition in if statements and
always use the multi-line format with the (name) on the same line.

```shell
# good
if true; then
  :
fi

# good
while true; do
  :
done

# bad
if true ; then
  :
fi

# bad
if true;
then
  :
fi

# bad
while true;
do
  :
done

# bad
if true; then :; fi
```

## Variables

### Formatting

Use snake_case for variables name and UPPER_SNAKE_CASE for
constants or global variables. In practice, this usually means
that `local` variables should be in lowercase and all other variables
should be uppercase.

```shell
# good
local function_variable=''
SCRIPT_VARIABLE=''

# bad
local FUNCTION_VARIABLE=''
local functionVariable=''
script_variable=''
ScriptVariable=''
```

### Set to explicit value

Possible to set to a value without anything on the RHS

```shell
# good
VAR=''

# bad
VAR=
```

### Use local liberally

## Redirecting

Never leave a space

```
# good
echo "test" >/dev/null

# bad
echo "test" > /dev/null
```

stdout followed by stderr. Can be seen in the popular idiom.

```shell
>/dev/null 2>&1
```

Ensure error messages go to STDERR, not STDOUT.

## Strings

Always surround string variables in quotes. This protects against string
values containing quotes. This alone will cut down must of your debugging time.

```shell
# good
echo "$var"

# bad
echo $var
```

Quoting won't matter in this simple case

#### Double quotes

TODO: benefits of single quotes

Use single quotes when you know you don't want shell expansion as it will
avoid you having to escape special characters.

### Functions

Always put a space after the last parenthesis and never declare a function
all in one line.

Omit the `function` keyword for POSIX compatibility
http://unix.stackexchange.com/questions/73750/difference-between-function-foo-and-foo

```shell
# good
main() {
  :
}

# bad
function main() {
  :
}
```

Always list parens for functions

```shell
# good
main() {
  :
}

# bad
main {

}
```


```shell
# good
main() {
  :
}

# bad
main(){
  :
}

# bad
main() { : }
```

Always place the opening brace on the same line

```shell
# bad
main()
{
  :
}
```

Functions names should be snake_case

```shell
# good
example_function() {
  :
}

# bad
exampleFunction() {
  :
}

# bad
ExampleFunction() {
  :
}
```

Functions should decalre
A function refers to the arguments by position. The expected
arguments should be commented above the function and references
by position.

```shell
# Arguments:
# 1 - String - The name of the file.
#
# Returns:
# 0 - If string is present and if a file.
# 1 - If string is not present
string_function() {
  :
}
```
