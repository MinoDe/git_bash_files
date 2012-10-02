#Set colors: 
## Thanks: https://wiki.archlinux.org/index.php/Color_Bash_Prompt
txtblk='\\033[0\;30m' # Black - Regular
txtred='\\033[0\;31m' # Red
txtgrn='\\033[0\;32m' # Green
txtylw='\\033[0\;33m' # Yellow
txtblu='\\033[0\;34m' # Blue
txtpur='\\033[0\;35m' # Purple
txtcyn='\\033[0\;36m' # Cyan
txtwht='\\033[0\;37m' # White
txtoffwht='\\033[0\;39m' # Off White

bldblk='\\033[1\;30m' # Black - Bold
bldred='\\033[1\;31m' # Red
bldgrn='\\033[1\;32m' # Green
bldylw='\\033[1\;33m' # Yellow
bldblu='\\033[1\;34m' # Blue
bldpur='\\033[1\;35m' # Purple
bldcyn='\\033[1\;36m' # Cyan
bldwht='\\033[1\;37m' # White
unkblk='\\033[4\;30m' # Black - Underline
undred='\\033[4\;31m' # Red
undgrn='\\033[4\;32m' # Green
undylw='\\033[4\;33m' # Yellow
undblu='\\033[4\;34m' # Blue
undpur='\\033[4\;35m' # Purple
undcyn='\\033[4\;36m' # Cyan
undwht='\\033[4\;37m' # White
bakblk='\\033[40m'   # Black - Background
bakred='\\033[41m'   # Red
bakgrn='\\033[42m'   # Green
bakylw='\\033[43m'   # Yellow
bakblu='\\033[44m'   # Blue
bakpur='\\033[45m'   # Purple
bakcyn='\\033[46m'   # Cyan
bakwht='\\033[47m'   # White
txtrst='\\033[0m'    # Text Reset

alias NORMAL="echo -e ${txtrst};"
alias SUCCESS="echo -e ${bldgrn};"
alias CMDINFO="echo -en ${bldcyn};"
alias INFO="echo -en ${txtylw};"
alias WARNING="echo -en ${bldylw};"
alias FAILURE="echo -en ${bldred};"

#-------------------------------------------------------------
# User specific aliases and functions
#-------------------------------------------------------------
#Note: for alias that will sudo -u add a space to the end of the alias to check for alias substitutions. i.e. using your aliases while using sudo

#Aegir user related 
alias suaegir="CMDINFO echo 'sudo -u aegir ' > /dev/tty; NORMAL sudo -u aegir "

#drush related aliases
alias adrush="CMDINFO echo 'suaegir drush ' > /dev/tty; NORMAL suaegir drush "
alias drush="CMDINFO echo 'adrush ' > /dev/tty; NORMAL adrush " #run all drush calls through aegir user

#git aegir aliases
alias agit="CMDINFO echo -n 'suaegir git ' > /dev/tty; NORMAL suaegir git " #git as the aegir user
alias git="CMDINFO echo -n 'agit ' > /dev/tty; NORMAL agit " #run all git calls through the aegir user

#Aegir usage aliases
alias noAegirSilent="alias git=\"git\"; alias drush=\"drush\""; #restore normal git/drush usage during a session (w/o tty feedback)
alias noAegir="INFO echo '#No sudo -u aegir: git => git, drush => drush;' > /dev/tty; echo '#You can also prepend git/drush cmds with \' > /dev/tty; echo '#Use alias useAegir to re-enable aegir alias ' > /dev/tty; echo -n > /dev/tty; NORMAL noAegirSilent"; #restore normal git/drush usage during a session
alias useAegir="INFO echo '#git => agit' > /dev/tty; echo '#use alias noAegir to disable ' > /dev/tty; echo -n > /dev/tty; NORMAL alias git=\"agit\"; alias drush=\"adrush\""; #restore aegir git/drush usage during a session

noAegirSilent; #for noAegir branch

#available funcitons
#ii = system information
alias mkOAplatform="CMDINFO echo '~/.bashrc >> mkOAplatform()' -n > /dev/tty; NORMAL mkOAplatform"

#alias rm="CMDINFO echo 'rm -i ' > /dev/tty; rm -i"
#alias cp="CMDINFO echo 'cp -i ' > /dev/tty; cp -i"
#alias mv="CMDINFO echo 'mv -i ' > /dev/tty; mv -i"
# -> Prevents accidentally clobbering files.
#alias mkdir="CMDINFO echo '#mkdir => mkdir -i ' > /dev/tty; mkdir -i

alias aliases="INFO echo '### Available Functions (.bashrc) ###' > /dev/tty; CMDINFO echo -n > /dev/tty; cat ~/.bashrc | grep function; echo -n > /dev/tty; INFO echo '### Alias (.bash_alias) ###' > /dev/tty; CMDINFO alias"
alias h="CMDINFO echo 'history ' > /dev/tty; history"
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
alias ll="CMDINFO echo 'ls -al ' > /dev/tty; NORMAL ls -al"
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
