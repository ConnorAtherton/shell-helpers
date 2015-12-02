#!/bin/bash

#
# The basis of a simple test
# suite for testing unix applications.
#
_includes() {
  if [ -n "$3" ]; then regex="$3"; else regex=P; fi
  if echo "$1" | grep -q $regex "$2"; then echo 0; else echo 1; fi
}

# assert $1 contains $2
assertIncludes() {
  assertTrue "'$1' should have contained '$2'" $(_includes "$@")
}
# assert $1 does not contain $2
assertNotIncludes() {
  assertFalse "'$1' should not have contained '$2'" $(_includes "$@")
}
