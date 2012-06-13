all: vim emacs screen git bash

vim: ./vimrc
	cp ./vimrc ~/.vimrc

emacs: ./emacs
	cp ./emacs ~/.emacs

git: ./gitconfig
	set -x
	cp ./gitconfig ~/.gitconfig

screen: ./screenrc
	cp ./screenrc ~/.screenrc

alias: ./aliases
	cp ./aliases ~/.bash_aliases

# osx: ./osx
#	cp ./osx ~/.osx
#	source ./osx

bash:
	cp ./bashrc ~/.bashrc
	cp ./aliases ~/.bash_aliases
	cp ./prompt ~/.bash_prompt
	cp ./extra ~/.bash_extra

	source ~/.bashrc
	echo 'Bash dotfiles successfully updated'
