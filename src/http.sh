#!/bin/bash

CLIENT=

#
# Releveant params
#
CURL_PARAMS=( "-L" )

WGET_PARAMS=( "--no-check-certificate"
              "-q" )

#
# Selects a client installed on the system
#
select_client() {
  command -v wget > /dev/null && CLIENT="wget ${WGET_PARAMS[@]}"
  command -v curl > /dev/null && CLIENT="curl ${CURL_PARAMS[@]}"

  test -z "$CLIENT" && abort "curl or wget required"
}

