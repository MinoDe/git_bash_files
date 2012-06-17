# .bashrc

PATH=$PATH:~/drush

#-------------------------------------------------------------
# Source global definitions (if any)
#-------------------------------------------------------------

if [ -f /etc/bashrc ]; then
        . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

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
# User specific aliases and functions
#-------------------------------------------------------------
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases # --> Read ~/.bash_aliases if present
fi

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
        *) echo "$usage"; return;;
        esac
    done
    shift $(( $OPTIND - 1 ))
    if [ "$#" -lt 1 ]; then
        echo "$usage"
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
            echo "lowercase: $file --> $newname"
        else
            echo "lowercase: $file not changed."
        fi
    done
}


function swap()  # Swap 2 filenames around, if they exist
{                #(from Uzi's bashrc).
    local TMPFILE=tmp.$$ 

    [ $# -ne 2 ] && echo "swap: 2 arguments needed" && return 1
    [ ! -e $1 ] && echo "swap: $1 does not exist" && return 1
    [ ! -e $2 ] && echo "swap: $2 does not exist" && return 1

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
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
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
        echo "Usage: killps [-SIGNAL] pattern"
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
}

#----------------------------------------
#openAtrium Functions
#----------------------------------------## function mkOAplatform ##
### Usage: mkOAplatform(http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz, fastage-openatrium-1.4-dl-drupal-6.26) ####
function mkOAplatform(){ #dl and install openatrium in the directory specified (really it would work with any aegir:aegir owned tar.gz)
  #if the first var is blank
  if [[ ! -n "$1" ]] ; then 
    echo "#mkOAplatform is a function that lets you dl and set up a dir for an OA install. 
 ##usage 
 #$ cd /var/aegir/platforms/;
 #$ mkOAplatform url newDirName '; 
 #ie: $ cd /var/aegir/platforms/; mkOAplatform http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz fastage-openatrium-1.4-dl-drupal-6.26'; 
    ";
  else
    ## set vars ##
    #if 2nd var is blank
    if [[ ! -n "$2" ]] ; then
      local tempdir="temp-openatrium"
    else
      local tempdir=$2;
    fi #end if [[ ! -n "$2" ]] 
    
    local releaseurl=$1; #ex: "http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz"
    local tgzfilename="$(basename $releaseurl)"   #possible option: filename="${fullfile##*/}" 
    local extension=${tgzfilename##*.}
    local filename=${tgzfilename%.*}
    
    sudo mkdir $tempdir;                    #make temp dir for new oa platform
    sudo chown -R aegir:aegir $tempdir;     #set ownership
    sudo chmod -R g+w $tempdir;             #update perms
    cd $tempdir;                            #cd to new dir
    sudo wget $releaseurl;                  #dl desired release
    tar -xzf $tgzfilename;                  #untar + gzip
    sudo rm $tgzfilename;                   #delete .tgz file
    
    local newfilename=$(ls -d */);
    #newfilename="$filename-dl";
    sudo chown -R aegir:aegir $filename;    #set ownership
    sudo chmod -R g+w $newfilename;         #update perms
    sudo mv $newfilename* .;                #change dir name and move up a dir
    sudo rm -R $newfilename;                #remove old dir
  fi # end if [[ ! -n "$1" ]] 
}

#----------------------------------------
#Directory Functions
#----------------------------------------
function currentDir(){
  SOURCE="$1"
  while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  echo $DIR
}

#----------------------------------------
#Drush Backup Functions
#----------------------------------------
function drushbackdb(){ #drush backup db. Usage: drushbackdb drush.alias
  #if the first var is blank
  if [[ ! -n "$1" ]] ; then 
    echo -e "\n#drush db backup. Usage: drushbackdb drush.alias";
  else
    local drush_alias="$1"
    cd `drush dd @$drush_alias:%site`; 
    drush @$drush_alias sql-dump --ordered-dump --structure-tables-key=common --no-cache --result-file=`drush dd @$drush_alias:%dump`;
  fi # end if [[ ! -n "$1" ]]     
}

function gitbackdb() { #git add and commit db backup. Usage: gitbackdb drush.alias "commit message"
  #if the first var is blank
  if [[ ! -n "$1" ]] ; then 
    echo -e "\n#git add and commit db backup. Usage: gitbackdb drush.alias \"commit message\"";
  else
		local drush_alias="$1";
    #if 2nd var is blank
    if [[ ! -n "$2" ]] ; then
      local git_commit_msg="auto-commit of DB Dump";
    else
      local git_commit_msg="$2";
    fi #end if [[ ! -n "$2" ]] 
      
    cd `drush dd @$drush_alias:%dumpdir`; 
    git add `drush dd @$drush_alias:%dump`; 
    git commit -am"$git_commit_msg"; 
    echo "#BackupedDB. Use to restore: \`drush @$drush_alias sql-connect\` < \`drush dd @$drush_alias:%dump\`.
#To push your commit use: cd \`drush dd @$drush_alias:%dumpdir\`; git push orign master; cd -"; 
  fi # end if [[ ! -n "$1" ]] 
}

function dg_db_backup(){ #drush git db backup. Usage: dg_db_backup drush.alias "commit message"
  #if the first var is blank
  if [[ ! -n "$1" ]] ; then 
    echo -e "\n#drush git db backup. Usage: dg_db_backup drush.alias \"commit message\"";
  else
    local drush_alias="$1";
    local git_commit_msg="$2";
		#capture current dir so in order to return the user back to where they called the command
		#Relies on currentDir function
    local currentDir=`currentDir`;
		
		#backup db
    drushbackdb $drush_alias; 
		#commit backup
    gitbackdb $drush_alias "$git_commit_msg";
		
    #cd `drush dd @$drush_alias:%site`;
    cd $currentDir;	
  fi # end if [[ ! -n "$1" ]] 
}