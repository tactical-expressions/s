# 2026-09-22 Dmitrii Fediuk https://github.com/dmitrii-fediuk
umask 022

# 2017-06-09 For mage2pro/core
export DF_DEVELOPER=1
export EDITOR="vim"
export VISUAL="vim"
export TERM=xterm-256color

export HISTCONTROL="ignoreboth"
export HISTFILESIZE=99999999
export HISTSIZE=99999999

case $- in
	*i*) ;;
	  *) return;;
esac

export PS1='\[\e[01;33m\]\w\n\[\e[01;31m\]\$ \[\e[00m\]'
eval "$(dircolors)"
export LS_OPTIONS='--color=auto -h'
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias ..='cd ..'
alias ...='cd ../..'
alias s='ssh -l root'
alias db='mysql -A'

mesg n 2> /dev/null || true

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
