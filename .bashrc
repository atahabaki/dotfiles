#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.bash_helpers ]] && . ~/.bash_helpers
[[ -f ~/.bash_imports ]] && . ~/.bash_imports
[[ -f ~/.bash_ui ]] && . ~/.bash_ui
