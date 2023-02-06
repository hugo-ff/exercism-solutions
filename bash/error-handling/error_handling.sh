#!/usr/bin/env bash

function main {
  local -r name=$1
  if [[ $# -ne 1 ]]; then
    echo "Usage: ${0##*/} <person>"
    exit 1
  else
    echo "Hello, $name"
    exit 0
  fi
}

main "$@"