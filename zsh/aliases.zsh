alias zshconfig="code ~/dotfiles/.zshrc"
# alias ohmyzsh="code ~/.oh-my-zsh"

# Unix
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias e="$EDITOR"
alias v="$VISUAL"

# Bundler
alias b="bundle"

# Rails
alias rt="bin/rails test --defer-output --show-skips --warnings --pride"
alias migrate="bin/rails db:migrate db:rollback && bin/rails db:migrate db:test:prepare"
alias s="rspec"
alias t="rails test"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# `mkdir -p .git/safe` to check for bin/ version of executable (bin/rails vs system rails for example)
# https://thoughtbot.com/blog/git-safe
alias trustbin="mkdir -p .git/safe"
PATH=".git/safe/../../bin:$PATH"

