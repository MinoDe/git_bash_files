# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#alias drush='~/drush/drush'
#### Mamp aliases ####
alias drush='/Applications/MAMP/bin/php/php5.3.6/bin/php ~/drush/drush.php'
export PHP_VERSION="5.3.6"

PATH=$PATH:$HOME/bin

# DRUSH
export DRUSH_PHP="$PHP_HOME/bin/php"

#-------------------------------------------------------------
# Mac specific
#-------------------------------------------------------------
if [ -f ~/.bash_mac ]; then
  . ~/.bash_mac # --> Read ~/.bash_mac if present
fi
