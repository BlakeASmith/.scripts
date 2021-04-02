import os
from datetime import datetime
from pathlib import Path

import click

NOTES_PATH = Path(os.getenv("NOTES_PATH"))


@click.group()
def cli():
    ...


@click.argument("name")
@cli.command()
def new(name):
    """Create a new note with the given name."""
    note_path = (NOTES_PATH/name).with_suffix(".dotoo")
    if note_path.exists():
        raise FileExistsError()
    dt = datetime.now()
    note_path.write_text(f"{dt:%A %B %Y at %I:%M%p}\n\n* {name} :Note:")
    os.system(f"nvim +'call cursor(4, 3)' {note_path}" )



if __name__ == "__main__":
    cli()
