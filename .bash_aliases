#-------------------------------------------------------------
# User specific aliases and functions
#-------------------------------------------------------------
#Note: for alias that will sudo -u add a space to the end of the alias to check for alias substitutions. i.e. using your aliases while using sudo

#Aegir user related 
alias suaegir="echo '#suaegir => sudo -u aegir '; sudo -u aegir "

#drush related aliases
alias adrush="echo -n '#adrush => suaegir drush '; suaegir drush "
alias drush="echo -n '#drush => adrush '; adrush " #run all drush calls through aegir user

#git related aliases
alias agit="echo -n '#agit => suaegir git '; suaegir git " #git as the aegir user
alias git="echo -n '#git => agit '; agit " #run all git calls through the aegir user
alias noAegir="echo -n '#use alias git=\"git\"'; alias git=\"git\""; #restore normal git usage during a session
alias gpushom="echo -n '#gpushom => git push origin master '; git push origin master;"
alias gpullom="echo -n '#gpullom => git pull origin master '; git pull origin master;"
alias gps="echo -n '#gps => gpushom '; gpushom"
alias gpl="echo -n '#gpl => gpullom '; gpullom"
alias gst="echo -n '#gst => git status '; git status"
alias gci="echo -n '#gci => git commit '; git commit"

#available funcitons
#ii = system information
alias mkOAplatform="echo '#~/.bashrc >> mkOAplatform()' -n; mkOAplatform"

#alias rm="echo '#rm => rm -i '; rm -i"
#alias cp="echo '#cp => cp -i '; cp -i"
#alias mv="echo '#mv => mv -i '; mv -i"
# -> Prevents accidentally clobbering files.
#alias mkdir="echo '#mkdir => mkdir -i '; mkdir -i

alias aliases="echo '### Available Functions (.bashrc) ###'; echo -n; cat ~/.bashrc | grep function; echo -n; echo '### Alias (.bash_alias) ###'; alias"
alias h="echo '#h => history '; history"
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
alias ll="echo '#ll => ls -al '; ls -al"
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

