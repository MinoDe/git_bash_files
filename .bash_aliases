#-------------------------------------------------------------
# User specific aliases and functions
#-------------------------------------------------------------
alias aliases="echo '### Available Functions (.bashrc) ###' > /dev/tty; echo -n > /dev/tty; cat ~/.bashrc | grep function; echo -n > /dev/tty; echo '### Alias (.bash_alias) ###' > /dev/tty; alias"

#alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias h='history'
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

alias openFW='open -a "Adobe Fireworks CS4.app" '
alias openDW='open -a "Adobe Dreamweaver CS4.app" '
 
#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls)
#-------------------------------------------------------------
alias ll="echo '#ls -al'; ls -al"
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

#-------------------------------------------------------------
# tailoring 'less'
#-------------------------------------------------------------
alias more='less'

#-------------------------------------------------------------
# spelling typos - highly personnal and keyboard-dependent :-)
#-------------------------------------------------------------
alias lll='ll'
