all: vimrc screenrc gitrc emacsrc bashrc
	@echo 'All dotfiles successfully planted'

vimrc: ./vim/vimrc
	@cp ./vim/vimrc ~/.vimrc

gitrc: ./git/gitconfig
	@cp ./git/gitconfig ~/.gitconfig

screenrc: ./screen/screenrc
	@cp ./screen/screenrc ~/.screenrc

emacsrc: ./emacs/emacsrc
	@cp ./emacs/emacsrc ~/.emacs

# osx: ./osx
#	cp ./osx ~/.osx
#	source ./osx

mysqlrc:
	@cp ./mysql/my.cnf ~/.my.cnf

bashrc:
	@rm -rf ~/.bash
	@mkdir ~/.bash
	@cp ./bash/bashrc ~/.bash/bashrc
	@cp ./bash/aliases ~/.bash/bash_aliases
	@cp ./bash/prompt ~/.bash/bash_prompt
	@cp ./bash/extra ~/.bash/bash_extra
	@cp ./bash/profilerc ~/.bash/profilerc
	@source ~/.bash/profilerc
