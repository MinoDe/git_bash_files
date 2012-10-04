# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

#-------------------------------------------------------------
# Mac specific
#-------------------------------------------------------------
if [ -f ~/.bash_mac ]; then
  . ~/.bash_mac # --> Read ~/.bash_mac if present
fi
