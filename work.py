#!/usr/bin/python3
# Open nvim with all buffers pre loaded.
import os
import sys
from pathlib import Path

project_root = Path.cwd()
command = []

vim = os.getenv('EDITOR')
ext = sys.argv[1]
command.append(vim)

for path in project_root.glob(f'**/*.{ext}'):
    command += [str(path)]

os.system(' '.join(command))
