#!/usr/bin/env bash

# ~/.dotfiles/scripts/home_to_dotfiles.sh .gemrc .gitconfig .gitignore-global .psqlrc .rspec .gemrc .yarnrc .zshrc

for filename in "$@"; do
  mv "$HOME/$filename" "$HOME/.dotfiles/home/$filename"
  ln -s "$HOME/.dotfiles/home/$filename" "$HOME/$filename"
done
