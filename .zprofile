export PATH="$HOME/.cargo/bin:$HOME/bin:$PATH"
export ANDROID_HOME="$HOME/.android-home"
echo hello
if [[ $(tty) == /dev/tty1 ]]
then
	cp "$HOME/.xinitrc-i3" "$HOME/.xinitrc"
	exec startx
elif [[ $(tty) == /dev/tty3 ]]
then
	echo "available .xinitrc files:"
	ls -ax | rg "^\.xinitrc-"
	echo "do startxenv <name of de>"
fi
