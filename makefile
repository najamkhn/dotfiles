all: vim emacs screen git bash

vim: ./vim/vimrc
	@cp ./vim/vimrc ~/.vimrc
	@echo '>> vim configuration files installed'

# emacs: ./emacs/emacsrc
# 	@cp ./emacs/emacsrc ~/.emacs
# 	@echo '>> emacs configuration files installed'

git: ./git/gitconfig
	@cp ./git/gitconfig ~/.gitconfig
	@echo '>> git configuration files installed'

screen: ./screen/screenrc
	@cp ./screen/screenrc ~/.screenrc
	@echo '>> screen configuration files installed'

alias: ./bash/aliases
	@cp ./bash/aliases ~/.bash_aliases
	@echo '>> bash aliases installed'
# osx: ./osx
#	cp ./osx ~/.osx
#	source ./osx

bash:
	@cp ./bash/bashrc ~/.bashrc
	@cp ./bash/aliases ~/.bash_aliases
	@cp ./bash/prompt ~/.bash_prompt
	@cp ./bash/extra ~/.bash_extra

	@source ~/.bashrc
	@echo 'Sexy bash installed'
