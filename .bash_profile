# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#alias drush='~/drush/drush'
#### Mamp aliases ####
alias drush='/Applications/MAMP/bin/php/php5.3.6/bin/php ~/drush/drush.php'
export PHP_VERSION="5.3.6"

# HOME folders
export MAMP_HOME="/Applications/MAMP"
export PHP_HOME="$MAMP_HOME/bin/php/php$PHP_VERSION"

# DRUSH
export DRUSH_PHP="$PHP_HOME/bin/php"

# PATH
export PATH="$MAMP_HOME/bin:$PATH"
export PATH="$MAMP_HOME/Library/bin:$PATH"
export PATH="$PHP_HOME/bin:$PATH"
#### End Mamp Aliases ####

function currentDir(){
	SOURCE="$1"
	while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
	DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
	echo $DIR
}

function openMamp() {
  currentPath=$(currentDir $1)
	#echo $currentPath
	path=${currentPath//\/Applications\/MAMP\/htdocs\//http:\/\/localhost:8888\/}
	#echo $path
	open $path
}

##
# Drupal backup function
##
function d7backdb2() {
	currentPath=$(currentDir $1)
	siteDir='/Applications/MAMP/htdocs/stirstick/d7.lovesmalltownamerica.com'
	backUpFileName='d7.lovesmalltownamerica.com_lsta_drpl7.sql'
	backUpFileLocale='/Applications/MAMP/htdocs/stirstick/backups/d7.lovesmalltownamerica.com_backup/'
	username='root' #lsta_drupal'
	host='localhost' #host='mysql.lovesmalltownamerica.com'
	database='lsta_drpl7'
	commitMsg='auto-commit of DB Dump - MAMP'
	
	#drush backup db
	drush -r $siteDir sql-dump --ordered-dump --structure-tables-key=common --result-file=$backUpFileLocale$backUpFileName; 	cd $backUpFileLocale; 	git add $backUpFileName; 	git commit -am"$commitMsg";
	echo 'BackupedDB Use to restore: mysql --user=$username -p -h $host $database < $backUpFileLocale$backUpFileName'
	#go back where you started
	cd $currentPath; 
}

############
# Utility function to run a script and search for a particular string
# Return 0 for false, 1 for true
# Thanks: http://home.chrishunters.com/blogs/hunter/backing-w-drush
###########
function bln_runAndReadOutput () {  
  script_contents=( $($1) ) 
	echo 'prepare to loop'
  for element in $(seq 0 $((${#script_contents[@]} - 1)))
    do              
    	if [ "${script_contents[$element]}" = $2 ]; then
	   		#if we find the string we want, return 1
				return 1
			else
				echo 'result did not match '$2': '${script_contents[$element]}
    	fi
  done
  #if not, return 0
  return 0
}

function bln_runAndReadOutput2 () {  
	if [ "${1}" = $2 ]; then
		#if we find the string we want, return 1
		return 1
	else
		echo "result did not match $2: ${1}"
	fi
  #if not, return 0
  return 0
}


function d7backdb3() {
	currentPath=$(currentDir $1)
	siteDir='/Applications/MAMP/htdocs/stirstick/d7.lovesmalltownamerica.com'
	backUpFileName='d7.lovesmalltownamerica.com_lsta_drpl7.sql'
	backUpFileLocale='/Applications/MAMP/htdocs/stirstick/backups/d7.lovesmalltownamerica.com_backup/'
	username='root' #lsta_drupal'
	host='localhost' #host='mysql.lovesmalltownamerica.com'
	database='lsta_drpl7'
	commitMsg='auto-commit of DB Dump - MAMP'
	drushsuccess="success"
	
	#drush backup db
	echo 'drush -r '$siteDir' sql-dump... in progress'
	
  #run and capture output into variable
  #bln_runAndReadOutput "drush -r $siteDir sql-dump --ordered-dump --structure-tables-key=common --result-file=$backUpFileLocale$backUpFileName" "$drushsuccess"
  #bln_runAndReadOutput2 "drush -rv $siteDir sql-dump --ordered-dump --structure-tables-key=common --result-file=$backUpFileLocale$backUpFileName" "$drushsuccess"

	bln_runAndReadOutput "drush -r $siteDir st" 'Successful'
	result=$?
  if [ $result -eq 1 ]; then
		echo 'successful!'
		cd $backUpFileLocale; 	
		git add $backUpFileName;
		echo 'git commit backup: '$commitMsg 	
		git commit -am"$commitMsg";
		echo 'BackupedDB. Use to restore: mysql --user=$username -p -h $host $database < $backUpFileLocale$backUpFileName'
		#go back where you started
		cd $currentPath; 
	else
		echo 'Back-up failed'
	fi
}

function test(){
	currentPath=$(currentDir $1)
	echo 'what? '$1' '$currentPath' no really?'
}

##
# Your previous /Users/vid/.bash_profile file was backed up as /Users/vid/.bash_profile.macports-saved_2012-03-15_at_23:06:01
##

# MacPorts Installer addition on 2012-03-15_at_23:06:01: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

