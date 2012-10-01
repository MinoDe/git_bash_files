#-------------------------------------------------------------
# User specific aliases and functions
#-------------------------------------------------------------
#Note: for alias that will sudo -u add a space to the end of the alias to check for alias substitutions. i.e. using your aliases while using sudo

#Aegir user related 
alias suaegir="echo '#suaegir => sudo -u aegir ' > /dev/tty; sudo -u aegir "

#drush related aliases
alias adrush="echo '#adrush => suaegir drush ' > /dev/tty; suaegir drush "
alias drush="echo '#drush => adrush ' > /dev/tty; adrush " #run all drush calls through aegir user

#git aegir aliases
alias agit="echo -n '#agit => suaegir git ' > /dev/tty; suaegir git " #git as the aegir user
alias git="echo -n '#git => agit ' > /dev/tty; agit " #run all git calls through the aegir user

#Aegir usage aliases
alias noAegirSilent="alias git=\"git\"; alias drush=\"drush\""; #restore normal git/drush usage during a session (w/o tty feedback)
alias noAegir="echo '#No sudo -u aegir: git => git, drush => drush;' > /dev/tty; echo '#You can also prepend git/drush cmds with \' > /dev/tty; echo '#Use alias useAegir to re-enable aegir alias ' > /dev/tty; echo -n > /dev/tty; noAegirSilent"; #restore normal git/drush usage during a session
alias useAegir="echo '#git => agit' > /dev/tty; echo '#use alias noAegir to disable ' > /dev/tty; echo -n > /dev/tty; alias git=\"agit\"; alias drush=\"adrush\""; #restore aegir git/drush usage during a session

noAegirSilent; #for noAegir branch

#available funcitons
#ii = system information
alias mkOAplatform="echo '#~/.bashrc >> mkOAplatform()' -n > /dev/tty; mkOAplatform"

#alias rm="echo '#rm => rm -i ' > /dev/tty; rm -i"
#alias cp="echo '#cp => cp -i ' > /dev/tty; cp -i"
#alias mv="echo '#mv => mv -i ' > /dev/tty; mv -i"
# -> Prevents accidentally clobbering files.
#alias mkdir="echo '#mkdir => mkdir -i ' > /dev/tty; mkdir -i

alias aliases="echo '### Available Functions (.bashrc) ###' > /dev/tty; echo -n > /dev/tty; cat ~/.bashrc | grep function; echo -n > /dev/tty; echo '### Alias (.bash_alias) ###' > /dev/tty; alias"
alias h="echo '#h => history ' > /dev/tty; history"
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias print='/usr/bin/lp -o nobanner -d $LPDEST'
# Assumes LPDEST is defined (default printer)
alias pjet='enscript -h -G -fCourier9 -d $LPDEST'
# Pretty-print using enscript

alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'

#-------------------------------------------------------------
# Mac specific aliases
#-------------------------------------------------------------
alias openFW='open -a "Adobe Fireworks CS4.app" '
alias openDW='open -a "Adobe Dreamweaver CS4.app" '
 
#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls)
#-------------------------------------------------------------
alias ll="echo '#ll => ls -al ' > /dev/tty; ls -al"
# alias lg="ls -l --group-directories-first"
# alias lsc='ls -ahF --color'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files
# alias lx='ls -alXB'         # sort by extension
alias lk='ls -alSr'         # sort by size, biggest last
alias lc='ls -altcr'        # sort by and show change time, most recent last
alias lu='ls -altur'        # sort by and show access time, most recent last
alias lt='ls -altr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -alR |less'    # recursive ls
# alias tree='tree -Csu'     # nice alternative to 'recursive ls'

# If your version of 'ls' doesn't support --group-directories-first try this:
function lg(){ ls -al "$@"| egrep "^d" | egrep ".|.."; ls -alS "$@"| egrep "^d" | egrep -v ".|.."; ls -alS | egrep -v "^d|total"; }
function lgr() { ls -al "$@"| egrep "^d" | egrep ".|.."; ls -alSr "$@"| egrep "^d" | egrep -v ".|.."; ls -alSr | egrep -v "^d|total"; }

#-------------------------------------------------------------
# spelling typos - highly personnal and keyboard-dependent :-)
#-------------------------------------------------------------
alias lll='ll'

#-------------------------------------------------------------
# tailoring 'less'
#-------------------------------------------------------------
alias more='less'