#!/usr/bin/env bash

# Make directory and cd into it.

function mcd() {
  mkdir -p "$1" && cd "$1" || exit;
}
