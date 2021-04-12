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

alias pa="ping -c 3 google.com"
alias termbin="nc termbin.com 9999"
alias kj="sudo journalctl -ke"
alias cl="xclip -sel clipboard"
alias ringmsg="sudo journalctl -ke"
alias iwlan0="iwctl station wlan0"
alias pacu='echo "last updated: $(cat ~/last-update-time)" && sudo pacman -Syu && date "+%a %Y/%m/%d %T" > ~/last-update-time'
alias pacs="sudo pacman -S --needed"
alias pacss="pacman -Ss"
alias pacr="sudo pacman -Rns"
alias vim="nvim"
alias chrome="flatpak run com.github.Eloston.UngoogledChromium"
alias fjd="firejail --x11=xephyr --xephyr-screen=1888x1062 openbox"
alias x="exit"
alias aur=". aur-dl"
alias xmrfast="sudo xmrig -u $(cat ~/xmr-addresses/ninja) -o $(cat ~/xmr-addresses/current-pool) --pause-on-battery -p"

