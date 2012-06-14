all: vimrc screenrc gitrc bashrc
	@echo 'All dotfiles successfully planted'

vimrc: ./vim/vimrc
	@cp ./vim/vimrc ~/.vimrc

gitrc: ./git/gitconfig
	@cp ./git/gitconfig ~/.gitconfig

screenrc: ./screen/screenrc
	@cp ./screen/screenrc ~/.screenrc

alias: ./bash/aliases
	@cp ./bash/aliases ~/.bash_aliases

# osx: ./osx
#	cp ./osx ~/.osx
#	source ./osx

bashrc: alias
	@cp ./bash/bashrc ~/.bashrc
	@cp ./bash/aliases ~/.bash_aliases
	@cp ./bash/prompt ~/.bash_prompt
	@cp ./bash/extra ~/.bash_extra
	@source ~/.bashrc
