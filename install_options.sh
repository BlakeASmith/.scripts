#!/bin/bash


# Setup for envfile to be loaded
command="source $HOME/.scripts/options.env"
grep -qxF "$command" "$HOME/.bashrc" || \
	echo "$command" >> "$HOME/.bashrc"


# Setup meta-data location
echo -n "Where would you like to keep meta-data files? (defaults to ~/.scripts-meta): "
read path

path=${path:-"$HOME/.scripts-meta"}

mkdir -p $path

echo "export SCRIPTS_META_DATA_PATH=$path" > options.env


echo -n "Where would you like your notes stored?: "
read path

mkdir -p "$HOME/$path"

echo "export NOTES_PATH=$HOME/$path" >> options.env

