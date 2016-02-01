#!/bin/bash

set -e
set -u

puts () {
  if [[ -t 1 ]]; then
    printf "%b>>>%b %b%s%b\n" "\x1b[1m\x1b[32m" "\x1b[0m" \
                              "\x1b[1m\x1b[37m" "$1" "\x1b[0m"
  else
    printf ">>> %s\n" "$1"
  fi
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

puts "executing $DIR/brew.sh"
($DIR/brew.sh)
