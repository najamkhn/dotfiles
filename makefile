all: vimrc screenrc gitrc emacsrc bashrc
	@echo 'All dotfiles successfully planted'

vimrc: ./vim/vimrc
	@cp ~/.vimrc ~/.vimrc_old
	@cp ./vim/vimrc ~/.vimrc

gitrc: ./git/gitconfig
	@cp ~/.gitconfig ~/.gitconfig_old
	@cp ./git/gitconfig ~/.gitconfig

screenrc: ./screen/screenrc
	@cp ./screen/screenrc ~/.screenrc

alias: ./bash/aliases
	@cp ./bash/aliases ~/.bash_aliases

emacsrc: ./emacs/emacsrc
	@cp ./emacs/emacsrc ~/.emacs

# osx: ./osx
#	cp ./osx ~/.osx
#	source ./osx

mysqlrc:
	@cp ./mysql/my.cnf ~/.my.cnf

bashrc: alias
	@cp ~/.bashrc ~/.bashrc_old
	@cp ./bash/aliases ~/.bash_aliases

	@cp ./bash/bashrc ~/.bashrc
	@cp ./bash/aliases ~/.bash_aliases
	@cp ./bash/prompt ~/.bash_prompt
	@cp ./bash/extra ~/.bash_extra
	@source ~/.bashrc


clean:
	rm ~/.bash_aliases
	rm ~/.bash_prompt
	rm ~/.bash_extra
