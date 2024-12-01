#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export EDITOR="vim"

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e " s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

PS1='\[\e[92;1m\]\u\[\e[92m\]@\[\e[92m\]\h\[\e[39m\]:\[\e[94m\]\W\[\e[91;1m\]$(parse_git_branch)\[\e[0m\]\[\e[39m\]\\$\[\e[0m\] '
