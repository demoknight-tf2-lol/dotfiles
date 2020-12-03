# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch prompt_subst
unsetopt autocd beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ninja/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls="ls --color=auto"
PS1='%B%F{green}ninja@arch %f%b$(pwd | sed -r "s/^\/home\/ninja(.*)/~\1/") %B$%b '


# Remove mode switching delay.
KEYTIMEOUT=5

# Change cursor shape for different vi modes.
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] ||
		[[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'

	elif [[ ${KEYMAP} == main ]] ||
		[[ ${KEYMAP} == viins ]] ||
		[[ ${KEYMAP} = '' ]] ||
		[[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
	fi
}
zle -N zle-keymap-select

_fix_cursor() {
	echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursor)

alias pa="ping archlinux.org"
alias termbin="nc termbin.com 9999"
alias l="ls -al --sort=time"
alias kj="sudo journalctl -ke"
alias cl="xclip -sel clipboard"
alias vim="nvim"
alias ringmsg="sudo journalctl -ke"
alias iwlan0="iwctl station wlan0"

