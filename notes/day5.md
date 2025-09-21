# Day 5 Practice: Environment Variables & Aliases

## Checking environment variables
- `echo $HOME` → showed my home directory.
- `echo $USER` → showed my current user.
- `echo $PATH` → displayed the directories Linux searches for commands.

## Creating and using variables
- `MY_VAR="HelloWorld"`
- `echo $MY_VAR` → printed `HelloWorld`.

## Exporting variables
- `export MY_VAR="HelloAgain"`
- `echo $MY_VAR` → printed `HelloAgain`.

## Unsetting variables
- `unset MY_VAR`
- `echo $MY_VAR` → returned nothing (variable removed).

## Aliases
- `alias ll="ls -l"` → created a shortcut for listing files in long format.
- `ll` → worked as expected.
- `alias` → listed all active aliases.

## Bonus: Making aliases permanent
- Opened `~/.bashrc` with `nano ~/.bashrc`.
- Added the line: `alias ll="ls -l"`.
- Saved and exited.
- Ran `source ~/.bashrc` to apply changes immediately.
- Verified `ll` works even in new sessions.
