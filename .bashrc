# .bashrc

#-------------------------------------------------------------
# Source global definitions (if any)
#-------------------------------------------------------------
if [ -f /etc/bashrc ]; then
  . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

aliasArr=(); #Initiate aliases array

#-------------------------------------------------------------
# List aliases and funcitons in bashrc file
#-------------------------------------------------------------
alias aliases_bashrc="INFO echo '### Available Functions (.bashrc) ###' > /dev/tty; CMDINFO echo -n > /dev/tty; cat ~/.bashrc | grep function; echo -n > /dev/tty; INFO echo '### Aliases (.bashrc) ###' > /dev/tty; CMDINFO alias; NORMAL"
aliasArr=("${aliasArr[@]}" "aliases_bashrc") #Add aliases to array 

#-------------------------------------------------------------
# User specific colors
#-------------------------------------------------------------
if [ -f ~/.bash_colors ]; then
  . ~/.bash_colors # --> Read ~/.bash_colors if present
	#alias aliases="aliases_colors"
	aliasArr=("${aliasArr[@]}" "aliases_colors") #Add aliases to array 
fi

#-------------------------------------------------------------
# User specific aliases and functions
#-------------------------------------------------------------
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases # --> Read ~/.bash_aliases if present
	#alias aliases="aliases; aliases_bash "
	aliasArr=("${aliasArr[@]}" "aliases_bash") #Add aliases to array 
fi

#--------------------------------
# Mac specific
#--------------------------------
if [ -f ~/.bash_mac ]; then
  . ~/.bash_mac # --> Read ~/.bash_mac if present
	#alias aliases="aliases; aliases_mac "
	aliasArr=("${aliasArr[@]}" "aliases_mac") #Add aliases to array 
fi

#--------------------------------
# Aegir specific
#--------------------------------
if [ -f ~/.bash_aegir ]; then
  . ~/.bash_aegir # --> Read ~/.bash_aegir if present
	#alias aliases="aliases; aliases_aegir "
	aliasArr=("${aliasArr[@]}" "aliases_aegir")	#Add aliases to array 
fi

#-------------------------------------------------------------
# Drush specific
#-------------------------------------------------------------
if [ -f ~/.bash_drush ]; then
  . ~/.bash_drush # --> Read ~/.bash_drush if present
	#alias aliases="aliases; aliases_drush "
	aliasArr=("${aliasArr[@]}" "aliases_drush") #Add aliases to array 
fi

#-------------------------------------------------------------
# User specific git aliases and functions
#-------------------------------------------------------------
if [ -f ~/.gitrc ]; then
  . ~/.gitrc # --> Read ~/.gitrc if present
	#alias aliases="aliases; aliases_git "
	aliasArr=("${aliasArr[@]}" "aliases_git") #Add aliases to array 
fi

#----------------------------------------
#Aliases Functions
#----------------------------------------
#Gatheres and displays aliases and functions from known .bash files (concatenated in an array)
alias aliases=${aliasArr[@]};

#----------------------------------------
#Directory Functions
#----------------------------------------
function currentDir(){
  SOURCE="$1"
  while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  echo $DIR
}

#-------------------------------------------------------------
# History mod from Jason H.
#-------------------------------------------------------------
# search history via up and down arrow keys
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

# Avoid duplicates in the bash command history.
export HISTCONTROL=erasedups

# Increase history size
export HISTSIZE=10000

# Append commands to the bash command history file (~/.bash_history) # instead of overwriting it. This way if you have multiple terminals open # they play nicely with the bash command history.
shopt -s histappend

# Append commands to the history every time a prompt is shown, # instead of after closing the session. This way if you have multiple # terminals open they play nicely with the bash history.
PROMPT_COMMAND='history -a'

#-------------------------------------------------------------
# tailoring 'less'
#-------------------------------------------------------------
export PAGER=less
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
   # Use this if lesspipe.sh exists
export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

#-------------------------------------------------------------
# File & string-related functions:
#-------------------------------------------------------------
# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }

# Find a file with pattern $1 in name and Execute $2 on it:
function fe()
{ find . -type f -iname '*'${1:-}'*' -exec ${2:-file} {} \;  ; }

# Find a pattern in a set of files and highlight them:
# (needs a recent version of egrep)
function fstr()
{
    OPTIND=1
    local case=""
    local usage="fstr: find string in files.
Usage: fstr [-i] \"pattern\" [\"filename pattern\"] "
    while getopts :it opt
    do
        case "$opt" in
        i) case="-i " ;;
        *) INFO echo "$usage"; NORMAL return;;
        esac
    done
    shift $(( $OPTIND - 1 ))
    if [ "$#" -lt 1 ]; then
        INFO echo "$usage" NORMAL
        return;
    fi
    find . -type f -name "${2:-*}" -print0 | \
    xargs -0 egrep --color=always -sn ${case} "$1" 2>&- | more

}

function cuttail() # cut last n lines in file, 10 by default
{
    nlines=${2:-10}
    sed -n -e :a -e "1,${nlines}!{P;N;D;};N;ba" $1
}

function lowercase()  # move filenames to lowercase
{
    for file ; do
        filename=${file##*/}
        case "$filename" in
        */*) dirname==${file%/*} ;;
        *) dirname=.;;
        esac
        nf=$(echo $filename | tr A-Z a-z)
        newname="${dirname}/${nf}"
        if [ "$nf" != "$filename" ]; then
            mv "$file" "$newname"
            INFO echo "lowercase: $file --> $newname" NORMAL
        else
            NORMAL echo "lowercase: $file not changed." NORMAL
        fi
    done
}


function swap()  # Swap 2 filenames around, if they exist
{                #(from Uzi's bashrc).
    local TMPFILE=tmp.$$

    [ $# -ne 2 ] && INFO echo "swap: 2 arguments needed" NORMAL && return 1
    [ ! -e $1 ] && INFO echo "swap: $1 does not exist" NORMAL && return 1
    [ ! -e $2 ] && INFO echo "swap: $2 does not exist" NORMAL && return 1

    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

function extract()      # Handy Extract Program.
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           WARNING echo "'$1' cannot be extracted via >extract<" NORMAL;;
         esac
     else
        WARNING echo "'$1' is not a valid file" NORMAL
     fi
}

#-------------------------------------------------------------
# Process/system related functions:
#-------------------------------------------------------------


function my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,bsdtime,command ; }
function pp() { my_ps f | awk '!/awk/ && $0~var' var=${1:-".*"} ; }


function killps()                 # Kill by process name.
{
    local pid pname sig="-TERM"   # Default signal.
    if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
        INFO echo "Usage: killps [-SIGNAL] pattern" NORMAL
        return;
    fi
    if [ $# = 2 ]; then sig=$1 ; fi
    for pid in $(my_ps| awk '!/awk/ && $0~pat { print $1 }' pat=${!#} ) ; do
        pname=$(my_ps | awk '$1~var { print $5 }' var=$pid )
        if ask "Kill process $pid <$pname> with signal $sig?"
            then kill $sig $pid
        fi
    done
}

function my_ip() # Get IP adresses.
{
    MY_IP=$(/sbin/ifconfig ppp0 | awk '/inet/ { print $2 } ' | \
sed -e s/addr://)
    MY_ISP=$(/sbin/ifconfig ppp0 | awk '/P-t-P/ { print $3 } ' | \
sed -e s/P-t-P://)
}

function ii()   # Get current host related info.
{
    INFO
    echo -e "\nYou are logged on ${RED}$HOST"
    echo -e "\nAdditionnal information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Memory stats :$NC " ; free
    my_ip 2>&- ;
    echo -e "\n${RED}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
    echo -e "\n${RED}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
    echo -e "\n${RED}Open connections :$NC "; netstat -pan --inet;
    echo
    NORMAL
}
