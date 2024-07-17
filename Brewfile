# https://github.com/Homebrew/homebrew-bundle
# run `brew bundle` in this directory to install:
# `brew leaves` to see packages that aren't a dependency of any other package
# (to see if you need to add something here)

HOMEBREW_BUNDLE_NO_LOCK=1

tap "heroku/brew"
tap "homebrew/bundle"
tap "homebrew/cask-fonts"
tap "homebrew/services"

# system
brew "libyaml"
# database
brew "redis", restart_service: true
brew "sqlite"
# version management
brew "frum"

# config management
brew "rcm"
brew "autojump"
brew "starship"
brew "zsh-autosuggestions"
brew "zsh-syntax-highlighting"
brew "shellcheck"
