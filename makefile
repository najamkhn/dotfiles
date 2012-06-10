all: vim emacs screen

vim: ./vimrc
	cp ./vimrc ~/.vimrc

emacs: ./emacs
	cp ./emacs ~/.emacs

# git: ./gitconfig
#     cp gitconfig ~/.gitconfig

screen: ./screenrc
	cp ./screenrc ~/.screenrc