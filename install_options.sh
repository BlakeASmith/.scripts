#!/bin/sh

echo -n "Where would you like to keep meta-data files? (defaults to ~/.scripts-meta):"
read path

path=${path:-"$HOME/.scripts-meta"}

mkdir -p $path

echo "SCRIPTS_META_DATA_PATH=$path" > options.env

