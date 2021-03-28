#!/bin/sh

# Install dependencies for scripts.

tmp=$(mktemp -d -t .scripts-deps-install-XXX)

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

rm -rf $tmp
