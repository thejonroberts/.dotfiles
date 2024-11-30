#!/usr/bin/env bash

# Copies files from ~/.dotfiles/config/ to ~/.config/

for dir in "$HOME"/.dotfiles/config/*/
do
  dir=${dir%*/}
  new_dir="$HOME/.config/${dir##*/}"
  mkdir -p new_dir

  for filename in "$dir"/*
  do
    filename=${filename##*/}
    ln -s -F -f -v "$dir/$filename" "$new_dir/$filename"
  done
done
