#!/usr/bin/env bash

function main {
  local -r name=$1

  if [ -z "$name" ]; then
    echo "One for you, one for me."
  fi

  if [ -n "$name" ]; then
    echo "One for $name, one for me."
  fi
}

main "$@"

