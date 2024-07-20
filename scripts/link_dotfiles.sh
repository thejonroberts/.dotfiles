#!/usr/bin/env bash

# ~/.dotfiles/scripts/link_dotfiles.sh

FILES=()
while IFS='' read -r line; do FILES+=("$line"); done < <(ls -A ~/.dotfiles/home)

for filename in "${FILES[@]}"; do
  ln -s -F -f -v "$HOME/.dotfiles/home/$filename" "$HOME/$filename";
done
