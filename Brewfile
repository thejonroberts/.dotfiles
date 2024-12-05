# https://github.com/Homebrew/homebrew-bundle
# run `brew bundle install` in this directory to install:
# `brew leaves` to see packages that aren't a dependency of any other package
# (to see if you need to add something here)

# references:
# https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f

HOMEBREW_BUNDLE_NO_LOCK=1

tap "homebrew/core"
tap "homebrew/bundle"
tap "homebrew/services"
# tap "homebrew/cask"
tap "buo/cask-upgrade" # update cask apps with `brew cu --all`
brew "mas" # mac app store apps if necessary

# fonts
# tap "homebrew/cask-fonts"
tap "shaunsingh/SFMono-Nerd-Font-Ligaturized"
cask "font-sf-mono-nerd-font-ligaturized"

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

# apps
cask "maccy"
cask "1password"
cask "visual-studio-code"
cask "google-chrome"
cask "firefox"
cask "visual-studio-code"
cask "docker"
cask "discord"
cask "slack"
cask "obsidian"
