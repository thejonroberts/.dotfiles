# https://github.com/Homebrew/homebrew-bundle
# run `brew bundle` in this directory to install:
# `brew leaves` to see packages that aren't a dependency of any other package
# (to see if you need to add something here)

HOMEBREW_BUNDLE_NO_LOCK=1

tap "heroku/brew"
tap "homebrew/bundle"
tap "homebrew/services"

# system
brew "bash"
brew "libyaml"
brew "openssl"

# database
brew "redis", restart_service: true
brew "sqlite"
brew "mysql"
brew "memcached"

# active storage
brew "vips"
brew "ffmpeg"
brew "mupdf"

# version management
brew "mise"

# zsh shell
brew "autojump"
brew "starship"
brew "zsh-autosuggestions"
brew "zsh-syntax-highlighting"
brew "zsh-history-substring-search"

# ide
brew "shellcheck"
brew "yamllint"
