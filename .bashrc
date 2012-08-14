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


function ssh-copy-id-mac() { #mac version of ssh-copy-id: cat ~/.ssh/id_rsa.pub | ssh admin@mydomain.net "umask 077; mkdir -p .ssh ; cat >> .ssh/authorized_keys"
  #!/bin/sh
  if [[ ! -n "$1" ]] ; then 
    echo 1>&2 Usage: $0 user@server
  else
    cat ~/.ssh/id_rsa.pub | ssh $1 "umask 077; mkdir -p .ssh ; cat >> .ssh/authorized_keys"
  fi
}

function currentDir(){
  SOURCE="$1"
  while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  echo $DIR
}

#-----------------------------------------------------------
# Drush functions
#-----------------------------------------------------------
function cddrush(){ #cd to a drush site alias. Don't include the @ symbol. Usage: cdsite hr.uoregon.edu. => cd `drush dd @hr.uoregon.edu:%site` 
  #!/bin/sh
  if [[ ! -n "$1" ]] ; then
    echo 1>&2 "Usage: cddrush drush_site_alias (with out the @ symbol). ex: cdsite hr.uoregon.edu. That results in $ cd `drush dd @hr.uoregon.edu:%site`"
  else
    echo "#drush dd @$1:%site" > /dev/tty;
    cd `drush dd @$1:%site`
  fi
}

#-----------------------------------------------------------
# Git functions
#-----------------------------------------------------------
function git-create-branch(){ # git-create-branch <branch_name>
  #!/bin/sh
  #from http://www.zorched.net/2008/04/14/start-a-new-branch-on-your-remote-git-repository/comment-page-2/#comment-18065
  if [[ ! -n "$1" ]] ; then
    echo 1>&2 Usage: git-create-branch branch_name
  else
    #$1 => branch_name
    #vars:
    GCO="git checkout -b $1";
    GPO="git push origin $1";
    GBRSUP="git branch --set-upstream $1 origin/$1";
    GBR="git branch";
    GBRR="git branch -r";
    #actions:
    echo "Adding $1"
    echo "1 - Create the local branch from the current one: '$GCO'" > /dev/tty; $GCO
    echo "2 - Push that branch to the remote: '$GPO'" > /dev/tty; $GPO
    echo "3 - Set the upstream branch to track: '$GBRSUP'" > /dev/tty; $GBRSUP
    echo "4 - If you need to delete the remote branch use: git-delete-branch $1 or git push origin :$1" > /dev/tty; echo -n;
    echo "### Local branches ($GBR) ### "; $GBR
    echo "### Remote branches ($GBRR) ### "; $GBRR
  fi
}

function git-delete-branch(){ # git-create-branch <branch_name>
  #!/bin/sh
  #modified from script and comments at http://www.zorched.net/2008/04/14/start-a-new-branch-on-your-remote-git-repository/comment-page-2/#comment-18065
  #if [ $# -ne 1 ]; then
  if [[ ! -n "$1" ]] ; then
    echo 1>&2 Usage: git-delete-branch branch_name
  else
    #$1 -> branch_name
    #vars:
    GCO="git checkout master";
    GPOD="git push origin :$1";
    GBRD="git branch -d $1";
    GFO="git fetch origin";
    GPL="git pull origin master"
    GBR="git branch";
    GBRR="git branch -r";
    #Verbose actions:
    echo "Removing $1"
    echo "1 - Check out master branch: '$GCO'" > /dev/tty; $GCO
    echo "2 - Delete remote branch: '$GPOD'" > /dev/tty; $GPOD
    echo "3 - Delete local branch: '$GBRD'" > /dev/tty; $GBRD
    echo "4 - fetch and pull origin: '$GFO; $GPL;'" > /dev/tty; $GFO; $GPL;
    echo "### Local branches ($GBR) ### "; $GBR
    echo "### Remote branches ($GBRR) ### "; $GBRR
  fi
}

function git-patch(){ # Apply a patch with git. Typical steps: stat, check, apply and if no errors occur use $ git am --signoff < ...patch.  Usage: git-patch stat|check|signoff URL.patch Ex: git-patch stat http://drupal.org/files/features-date-1279928-15.patch 
  #!/bin/sh
  #from http://drupal.org/node/1399218
  if [[ ! -n "$1" ]] ; then 
    echo 'Usage: git-patch stat|check|apply URL.patch' > /dev/tty
  else
    local URL=$2;
    local patchFilename="$(basename $2)"
    if [[ $1 == "apply" ]] ; then
      if [[ $URL == http* ]] ; then
        echo "# sudo wget $URL;" > /dev/tty;
        sudo wget $URL; git $1 $patchFilename; 
      fi
      echo "#git $1 $patchFilename " > /dev/tty;
      echo "# If the patch applied with no errors then use: "; > /dev/tty; echo "git am --signoff < $patchFilename" > /dev/tty;
      echo "# To delete the patch use: "; > /dev/tty; echo " rm $patchFilename" > /dev/tty;
    else
      if [[ $URL == http* ]] ; then
        echo "# sudo wget $URL;" > /dev/tty;
        sudo wget $URL; 
      fi
      echo "#git apply --$1 $patchFilename" > /dev/tty;
      git apply --$1 $patchFilename;
      echo "#Patchname: $patchFilename" > /dev/tty;
    fi
    if [[ $1 == "stat" ]] ; then
      echo "# To check the patch use: "; > /dev/tty; echo "  git-patch check $patchFilename" > /dev/tty;
    fi
    if [[ $1 == "check" ]] ; then
      echo "# To apply the patch use: "; > /dev/tty; echo "  git-patch apply $patchFilename" > /dev/tty;
    fi
  fi
}

#-----------------------------------------------------------
#  Open Atrium Platform Creation functions
#-----------------------------------------------------------
## function mkOAplatform ##
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
    
    echo "#tempdir: $2" > /dev/tty;

    local releaseurl=$1; #ex: "http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz"
    local tgzfilename="$(basename $releaseurl)"   #possible option: filename="${fullfile##*/}" 
    local extension=${tgzfilename##*.}
    local filename=${tgzfilename%.*}
    echo "#filename: $filename" > /dev/tty;

    echo "#mkdir $tempdir" > /dev/tty;
    sudo mkdir $tempdir;                    #make temp dir for new oa platform
    echo "#chown -R aegir:aegir $tempdir" > /dev/tty;
    sudo chown -R aegir:aegir $tempdir;     #set ownership
    echo "#chmod -R g+w $tempdir" > /dev/tty;
    sudo chmod -R g+w $tempdir;             #update perms
    echo "#cd $tempdir" > /dev/tty;
    cd $tempdir;                            #cd to new dir
    echo "#wget $releaseurl" > /dev/tty;
    sudo wget $releaseurl;                  #dl desired release
    echo "#tar -xzf $tgzfilename" > /dev/tty;
    tar -xzf $tgzfilename;                  #untar + gzip
    echo "#rm $tgzfilename" > /dev/tty;
    sudo rm $tgzfilename;                   #delete .tgz file
    
    local newfilename=$(ls -d */);
    #newfilename="$filename-dl";
    echo "#newfilename $newfilename" > /dev/tty;
    echo "#chown -R aegir:aegir $newfilename" > /dev/tty;
    sudo chown -R aegir:aegir $newfilename;    #set ownership
    echo "#chmod -R g+w $newfilename" > /dev/tty;
    sudo chmod -R g+w $newfilename;         #update perms
    echo "#mv $newfilename* ." > /dev/tty;
    sudo mv $newfilename* .;                #change dir name and move up a dir
    echo "#rm -R $newfilename" > /dev/tty;
    sudo rm -R $newfilename;                #remove old dir
  fi # end if [[ ! -n "$1" ]] 
}
