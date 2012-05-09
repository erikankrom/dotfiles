#!/bin/bash

# Enable bash completion
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

# Load ~/.bash_prompt, ~/.bash_exports, ~/.bash_aliases, ~/.bash_functions, ~/.bash_virtualenv
for file in ~/.{bash_prompt,bash_exports,bash_aliases,bash_functions,bash_virtualenv}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Load ~/.bash_extra, can be used for settings you don’t want to commit
#source ~/.bash_extra

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"