# Get all executible files in the current directory
FILES=$(find . -type f -executable -follow -print | grep -v install_scripts.sh)

# Copy files to ~/.local/bin
cp -r  $FILES  ~/.local/bin
