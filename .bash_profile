# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

PATH=$PATH:$HOME/bin

#-------------------------------------------------------------
# Mac specific
#-------------------------------------------------------------
if [ -f ~/.bash_mac ]; then
  . ~/.bash_mac # --> Read ~/.bash_mac if present
fi
