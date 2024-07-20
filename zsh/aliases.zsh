#!/usr/bin/env bash

alias zshconfig="code ~/dotfiles/.zshrc"
# alias ohmyzsh="code ~/.oh-my-zsh"

# Unix
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias e='$EDITOR'
alias v='$VISUAL'

# Git - NOTE: more git aliases in ~/.gitconfig
# (those require `git [alias]` or `g [alias]`)
alias gs='git status '
alias ga='git add '
alias gaa='git add --all'
alias gb='git branch '
alias gc='git commit'
alias gl='git log'
alias gcm='git commit -m'
alias gco='git checkout '
alias gd='git diff'

# Homebrew
alias brewup="brew update && brew upgrade && brew cleanup"

# Ruby
alias frumi='frum install --open-ssl-dir="$(brew --prefix openssl@3)"'
alias frumposti='gem update --system && gem install benchmark-ips'

# Bundler
alias b="bundle"

# Rails
TEST_OPTS="--defer-output --show-skips --warnings --pride"
alias rt='bin/rails test $TEST_OPTS'
alias migrate="bin/rails db:migrate db:rollback && bin/rails db:migrate db:test:prepare"
alias s="rspec"
alias t="rails test"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'
