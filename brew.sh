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

if ! brew_loc="$(type -p brew)" || [ -z "$brew_loc" ] ; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
else
  puts "updating brew"
  brew update
  puts "upgrading brew"
  brew upgrade
fi

brew install ack
brew install bash
brew install bash-completion
brew install boost
brew install brew-cask
brew install chruby
brew install duck
brew install git
brew install git-subrepo
brew install htop-osx
brew install hub
brew install icu4c
brew install imagemagick
brew install jpeg
brew install libevent
brew install libpng
brew install libtool
brew install memcached
brew install mongodb
brew install moreutils
brew install mysql
brew install neovim/neovim/neovim
brew install nvm
brew install openssl
brew install pkg-config
brew install phantomjs
brew install pngcheck
brew install postgresql
brew install python
brew install python3
brew install pyenv
brew install pyenv-virtualenv
brew install rabbitmq
brew install readline
brew install redis
brew install rename
brew install ruby-install
brew install sqlite
brew install the_silver_searcher
brew install tmux
brew install trash
brew install tree
brew install vim
brew install webp
brew install wget
brew install xz
brew install zsh

brew cleanup
