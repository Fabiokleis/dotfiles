#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM=alacritty
export EDITOR="nvim"
export CC="clang"
export CXX="clang++"
alias vim="nvim -p"
alias ls="exa"
alias ll="ls -l"
alias l="ls -la"
alias sl="ls"
alias la="ls -a"
alias hh=hstr                    # hh to be alias for hstr
alias df="duf"
alias grep="grep --color"
alias lslink="find -P . -maxdepth 1 -type l -exec echo -n '{} -> ' \; -exec readlink {} \;"
alias lslinkall="find -P . -type l -exec echo -n '{} -> ' \; -exec readlink {} \;"
alias lvim="/home/urameshi/.local/bin/lvim"
#PS1='[\u@\h \W]\$ '
PS1="[\[\033[34m\]\u\[\033[37m\]@\[\033[00m\]\[\033[36m\]\h\[\033[00m\] \[\033[31m\]\W\[\033[00m\]\[\033[037m\]]\$ "
complete -C /usr/local/bin/vault vault
export PATH=$PATH:~/.cargo/bin/

# HSTR configuration - add this to ~/.bashrc
export HSTR_CONFIG=hicolor       # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
# ensure synchronization between bash memory and history file
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hstr -- \C-j"'; fi
# if this is interactive shell, then bind 'kill last command' to Ctrl-x k
if [[ $- =~ .*i.* ]]; then bind '"\C-xk": "\C-a hstr -k \C-j"'; fi

