virtualenvwrapper-scripts
===

Basic scripts I use in conjunction with virtualenvwrapper to setup my working environments.

Installation
---
To use the scripts just download or clone the repository, and configure `VIRTUALENVWRAPPER_HOOK_DIR` to the appropriate location.  My `~/.bash_profile` is listed below as an example:

    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Projects
    export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
    export VIRTUALENVWRAPPER_HOOK_DIR=$HOME/Projects/dotfiles/virtualenvwrapper/
    source /usr/local/bin/virtualenvwrapper.sh