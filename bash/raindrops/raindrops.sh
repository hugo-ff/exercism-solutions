#!/usr/bin/env bash

function concat_array {
  local -n array=$1;
  local IFS=;

  echo "${array[*]}";
}

function main {
  local -r number=$1

  declare -a Raindrops
  declare -A factors

  factors[3]="Pling"
  factors[5]="Plang"
  factors[7]="Plong"

  for key in "${!factors[@]}"; do
    [[ $(($number % $key)) -eq 0 ]] && Raindrops=("${factors[$key]}" "${Raindrops[@]}")
  done

  [[ "${#Raindrops[@]}" -ne 0 ]] && concat_array Raindrops || echo $number
}

main "$@"