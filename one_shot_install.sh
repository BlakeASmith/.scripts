#!/bin/sh

# Clone and install scripts. Intended to be used with curl.

tmp=$(mktemp -d -t .scipts-XXX)

git clone https://github.com/BlakeASmith/.scripts

cd .scripts
./install_deps.sh
./install_scripts.sh

cd ..
cp -r .scripts ~/.scripts

rm -rf $tmp
