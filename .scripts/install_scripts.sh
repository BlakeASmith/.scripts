#!/bin/sh


# Prompt user for install options
./install_options.sh

# Get all executible files in the current directory
FILES=$(find . -type f -executable -follow -print \
	| grep -v install_scripts.sh \
	| grep -v one_shot_install.sh \
	| grep -v install_deps.sh \
	| grep -v *.git*)

# Copy files to ~/.local/bin
cp -r  $FILES  ~/.local/bin
