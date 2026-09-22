# 2026-09-22 Dmitrii Fediuk https://github.com/dmitrii-fediuk
if [ -z "$_ENV_SETUP_COMPLETE" ]; then
	umask 0002
	o=(
		"$HOME/.local/bin"
		"$HOME/bin"
		'/opt/jrc/sbin'
		'/opt/jrc/bin'
		'/usr/local/sbin'
		'/usr/local/bin'
		'/usr/sbin'
		'/usr/bin'
		'/sbin'
		'/bin'
		'/snap/bin'
	)
	export PATH="$(IFS=:; echo "${o[*]}")"
	unset o
	# 2017-06-09 For mage2pro/core
	export DF_DEVELOPER=1
	export EDITOR="vim"
	export VISUAL="vim"
	export TERM=xterm-256color
	# History settings from 5.9.188.84 + JetRails
	export HISTCONTROL="ignoreboth"
	export HISTFILESIZE=99999999
	export HISTSIZE=99999999
	export HISTFILE="/home/$USER/.bash_history/$(/opt/jrc/bin/get-identity)_${SUDO_USER:-$USER}"
	export _ENV_SETUP_COMPLETE=1
fi
case $- in
	*i*) ;;
	  *) return;;
esac

export PS1='\[\e[01;33m\]\w\n\[\e[38;5;028m\]\$ \[\e[00m\]'
eval "$(dircolors)"
export LS_OPTIONS='--color=auto -h'
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias ..='cd ..'
alias ...='cd ../..'

alias db="mysql -h database.internal -u nj452lph6045gq45 -pq0vfkes25758xgg5 w76e2w3eh2w8epy0 -A"

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
