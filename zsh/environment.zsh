# User configuration
DEFAULT_USER=`whoami`

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
  export VISUAL="code"
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# HOMEBREW
eval "$(/opt/homebrew/bin/brew shellenv)"

# N NODE VERSION MANAGEMENT
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# FRUM
# NOTE: had to set these for psych / libyaml issue with frum
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib
export RUBY_CONFIG_OPTIONS=--with-openssl-dir="$(brew --prefix openssl@3)"
eval "$(frum init)"

# vscode / ruby debug
export RUBYOPT="-r /Users/jon/.frum/versions/3.3.3/lib/ruby/gems/3.3.0/gems/debug-1.9.2/lib/debug/prelude.rb ${RUBYOPT}"

# PostGreSQL path
export PATH="$PATH":/Applications/Postgres.app/Contents/Versions/latest/bin

# make vscode default for editing
export BUNDLER_EDITOR="code"

export STARSHIP_CONFIG=~/dotfiles/zsh/themes/starship.toml
