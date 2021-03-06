#!/bin/bash

# Install dependencies for scripts.

poetry install .

tmp=$(mktemp -d -t .scripts-deps-install-XXX)

pushd .
cd $tmp

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

popd

rm -rf $tmp
