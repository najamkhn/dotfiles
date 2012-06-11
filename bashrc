PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -f ~/.bash_aliases ]; then
   source ~/.bash_aliases
fi

if [ -f ~/.bash_prompt ]; then
   source ~/.bashrc
fi

if [ -f ~/.osx ]; then
   source ~/.osx
fi

if [ -f ~/.extra ]; then
   source ~/.extra
fi
