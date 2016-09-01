#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential make cmake scons curl m4 git \
                        texinfo autoconf automake autoconf-archive \
                        gettext libtool flex bison \
                        libbz2-dev libcurl4-openssl-dev zlib1g-dev \
                        libexpat-dev libncurses-dev python-setuptools \
                        python-yaml exuberant-ctags gawk \
                        libxml2-utils xsltproc zsh xvfb iceweasel

puts () {
  if [[ -t 1 ]]; then
    printf "%b>>>%b %b%s%b\n" "\x1b[1m\x1b[32m" "\x1b[0m" \
                              "\x1b[1m\x1b[37m" "$1" "\x1b[0m"
  else
    printf ">>> %s\n" "$1"
  fi
}

puts "be sure to change the shell to zsh after executing ./dotbot.sh"
