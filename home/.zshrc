#!/usr/bin/env bash

# export MANPATH="/usr/local/man:$MANPATH"

CONFIG_DIR="$HOME/.dotfiles/zsh"
source "$CONFIG_DIR/environment.zsh"
source "$CONFIG_DIR/aliases.zsh"

# check bin/ for executables (ie: `rails` -> bin/rails -> global `rails`)
# https://thoughtbot.com/blog/git-safe
alias trustbin="mkdir -p .git/safe"
PATH=".git/safe/../../bin:$PATH"

for ZSH_FILE in "$CONFIG_DIR/functions"/*.zsh(N); do
  source "${ZSH_FILE}"
done
export fpath=($FUNCTIONS_DIR/functions $fpath)

HOMEBREW_DIR="/opt/homebrew"
[ -f $HOMEBREW_DIR/etc/profile.d/autojump.sh ] && . $HOMEBREW_DIR/etc/profile.d/autojump.sh
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
source $HOMEBREW_DIR/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_DIR/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_DIR/share/zsh-history-substring-search/zsh-history-substring-search.zsh # must load after syntax highlighting
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export STARSHIP_CONFIG="$CONFIG_DIR/themes/starship.toml"

HISTFILE=~/.zhistory
HISTFILESIZE=4096
HISTSIZE=4096
SAVEHIST=4096
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.

autoload -Uz compinit
autoload -Uz +X bashcompinit
compinit
bashcompinit

for ZSH_FILE in "$CONFIG_DIR/completions"/*(N); do
  source "${ZSH_FILE}"
done

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# expand aliases (tab or ^Xa)
zstyle ':completion:*' completer _expand_alias _complete _ignored

eval "$(starship init zsh)"

# I have had problemss with [] in rspec before
# # Allow [ or ] whereever you want
# unsetopt nomatch
