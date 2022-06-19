#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.config/bash/.bash_imports ]] && . ~/.config/bash/.bash_imports
[[ -f ~/.config/bash/.bash_aliases ]] && . ~/.config/bash/.bash_aliases
[[ -f ~/.config/bash/.bash_helpers ]] && . ~/.config/bash/.bash_helpers
[[ -f ~/.config/bash/.bash_ui ]] && . ~/.config/bash/.bash_ui
