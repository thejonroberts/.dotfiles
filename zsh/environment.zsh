#!/usr/bin/env bash

# User configuration
DEFAULT_USER=$(whoami)
export DEFAULT_USER

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code --wait'
  export VISUAL="code --wait"
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# HOMEBREW
eval "$(/opt/homebrew/bin/brew shellenv)"

# MISE https://mise.jdx.dev
# zsh completions have been installed to:
#   /opt/homebrew/share/zsh/site-functions
# eval "$(mise activate zsh)"
# eval "$(mise hook-env -s zsh)"
if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  eval "$(/opt/homebrew/bin/mise activate zsh --shims)"
else
  eval "$(/opt/homebrew/bin/mise activate zsh)"
fi

# RUST
export PATH="$HOME/.cargo/env:$PATH"

# RUBY
RUBY_CONFIG_OPTS="--enable-yjit --with-openssl-dir=$(brew --prefix openssl) --with-libyaml-dir=$(brew --prefix libyaml) --with-readline-dir=$(brew --prefix readline)"
export RUBY_CONFIG_OPTS

# PostGreSQL path
export PATH="$PATH":/Applications/Postgres.app/Contents/Versions/latest/bin

# make vscode default for editing
export BUNDLER_EDITOR="code"

export STARSHIP_CONFIG=~/dotfiles/zsh/themes/starship.toml
