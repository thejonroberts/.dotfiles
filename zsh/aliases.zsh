#!/usr/bin/env bash

# Unix
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias e='$EDITOR'
alias v='$VISUAL'

# Git - NOTE: more git aliases in ~/.gitconfig
# (those require `git [alias]` or `g [alias]`)
alias ga='git add '
alias gaa='git add --all'
alias gb='git branch '
alias	gbclean='git branch -d $(git branch --merged=main | grep -v main) && git fetch --prune'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout '
alias gfu='git checkout main && git fetch upstream && git merge upstream/main'
alias gd='git diff'
alias gl='git log'
alias gs='git switch'
alias gsc='git switch -c'

DEVELOP_BRANCH=main
alias lazyrebase='git fetch && git reset --soft $DEVELOP_BRANCH'

# Shell
alias c='clear'
alias x='exit'
alias h='history -10' # last 10 history commands
alias hg='history | grep ' # +command
alias ag='alias | grep ' # +command
alias path='echo $PATH | tr -s ":" "\n"' # Pretty print the path
alias dotfiles='code ~/.dotfiles'

# Homebrew
alias brewup="brew update && brew upgrade && brew cleanup"

# Ruby

# Bundler
alias b="bundle"
alias be="bundle exec"

# Rails
alias migrate="bin/rails db:migrate db:rollback && bin/rails db:migrate db:test:prepare"
alias s="bin/rspec"
alias t="bin/rails test"
TEST_OPTS=(--defer-output --show-skips --warnings --pride)
alias rt='bin/rails test $TEST_OPTS'
