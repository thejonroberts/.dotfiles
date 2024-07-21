#!/usr/bin/env bash

# from https://tomdebruijn.com/posts/retry-until-fail-helper/
# Retry a command until it fails
#
# Usage:
#
#   $ until-fail true
#   # Will repeat forever
#
#   $ until-fail false
#   # Fails at the first iteration and breaks out of the retry loop
#
#   $ until-fail ruby -e "rand(0..1) == 1 ? (puts 'failed'; exit(1)) : (puts 'success')"
#   # Fails randomly and breaks out of the retry loop when it fails

# NOTE: to use a debugger with this script
  # begin
  #   test_something_that_fails_inconsistently
  # rescue Exception => e
  #   binding.b
  #   raise e # Reraise the failure so the retry script stops
  # end

if [[ -z "$*" ]]; then
  echo "ERROR: No command given to retry"
  exit 1 # Error status
fi

i=0
while true; do
  i=$((i + 1))
  echo "================================================================================"
  echo "Retry #$i: $*"
  echo
  # Run command and exit only if it fails
  if ! "$@"; then
    echo
    echo "ERROR: Failure on retry #$i"
    exit 1 # Exit loop with error status
  fi
done
