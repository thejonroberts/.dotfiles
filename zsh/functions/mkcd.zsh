#!/usr/bin/env bash

# Make directory and cd into it.

function mkcd() {
  mkdir -p "$1" && cd "$1" || exit;
}
