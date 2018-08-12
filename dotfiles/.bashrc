#!/bin/bash

[[ -f ~/.exports_private ]] && source ~/.exports_private # || echo 'Missing'
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases
[[ -f ~/.bash_vars ]] && source ~/.bash_vars

HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s histappend
shopt -s cdspell
