# export MANPATH="/usr/local/man:$MANPATH"

CONFIG_DIR="$HOME/.dotfiles"
source "$CONFIG_DIR/zsh/environment.zsh"
source "$CONFIG_DIR/zsh/aliases.zsh"
source "$CONFIG_DIR/zsh/functions.zsh"

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export STARSHIP_CONFIG="$CONFIG_DIR/zsh/themes/starship.toml"
setopt HIST_IGNORE_DUPS


autoload -Uz compinit && compinit

eval "$(starship init zsh)"
