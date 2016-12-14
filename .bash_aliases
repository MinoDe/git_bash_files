# .bash_aliases
# To include this in your .bash environment add this to your .bashrc file (removing ##):
###-------------------------------------------------------------
### User specific aliases and functions
###-------------------------------------------------------------
##if [ -f ~/.bash_aliases ]; then
##  . ~/.bash_aliases # --> Read ~/.bash_aliases if present
##fi

#-------------------------------------------------------------
# User specific colors
#-------------------------------------------------------------
if [ -f ~/.bash_colors ]; then
  . ~/.bash_colors # --> Read ~/.bash_colors if present
fi
#-------------------------------------------------------------
# User specific aliases and functions
#-------------------------------------------------------------

#--------------------------------
#site specific aliases
#--------------------------------
#-----------------
#drush git back up db
#-----------------
alias d7backdb='dg_db_backup d7.lsta.local '

#available funcitons
#ii = system information
alias mkOAplatform="CMDINFO echo '~/.bashrc >> mkOAplatform()' -n > /dev/tty; NORMAL mkOAplatform"

#alias rm="CMDINFO echo 'rm -i ' > /dev/tty; NORMAL rm -i"
#alias cp="CMDINFO echo 'cp -i ' > /dev/tty; NORMAL cp -i"
#alias mv="CMDINFO echo 'mv -i ' > /dev/tty; NORMAL mv -i"
# -> Prevents accidentally clobbering files.
#alias mkdir="CMDINFO echo '#mkdir => mkdir -i ' > /dev/tty; mkdir -i

alias aliases_bash="INFO echo '### Available Functions (.bash_aliases) ###' > /dev/tty; CMDINFO echo -n > /dev/tty; cat ~/bash/.bash_aliases | grep function; echo -n > /dev/tty; INFO echo '### Alias (.bash_alias) ###' > /dev/tty; CMDINFO echo -n; cat ~/bash/.bash_aliases | grep alias; echo -n; NORMAL" 
alias h="CMDINFO echo 'history ' > /dev/tty; NORMAL history"
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

#-------------------------------------------------------------
#Bash personalized for eleos
#-------------------------------------------------------------
alias sdc='cd ~/My\ Stuff/SDC/'
alias python-change="CMDINFO echo ' python-change => sudo update-alternatives --config python ' > /dev/tty; NORMAL sudo update-alternatives --config python"
