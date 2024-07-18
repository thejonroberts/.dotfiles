# My development environment configuration

My configuration files for my development environments. Inspired by everyone else's dotfiles and especially [thoughtbot's approach](https://github.com/thoughtbot/dotfiles).

I tried to get thoughtbot's `rcm` to work for me, but ran into some issues.[^1] But their approach is the right one: sync .rc files in ~/ with a repo you control via symlinks.

## Installation

This was not meant to be installed by others, but you can go for it. Currently `~/.dotfiles/home/` is hard-coded. You can modify the scripts to use your preferred directory - they are not complicated (And thank you [shellcheck](https://github.com/koalaman/shellcheck#in-your-editor)). You can safely move a git directory to `~/.dotfiles/` with (trailing slash is important):

```sh
 cp -RL path/to/folder/ ~.dotfiles
 rm -rf path/to/folder
```

### Adding a new dotfile

You have installed a new thing that uses `.somerc` file. Make sure it is not already a symlink. Make sure you have a target directory (~/.dotfiles/home). Add it to the repo with:

```sh
scripts/home_to_dotfiles.sh .somerc
```

This moves the file(s) and symlinks them. It accepts multiple files (space separated).

### Symlinking your dotfiles

You have a new machine, or want to make sure things are in sync:

```sh
scripts/link_dotfiles.sh
```

### Brewfile

Sets up homebrew'd packages.

```sh
brew bundle
```

[^1]: In particular, I wanted to keep the root directory clean and store files in a `./home/` directory (as rc files are in `~/`). I could not get the .rcrc DOTFILES_DIRS environment variable to work for all of the operations.
