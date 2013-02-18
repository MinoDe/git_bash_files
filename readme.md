-- SUMMARY --

git_bash_files is a collection of git and bash files providing a number of aliases and functions that I use regularly.
There are currently 3 branches; one for each platform / environment that I work in.

* Master
    * In use on most of my remote servers
* Mac
    * In use on my mac workstations
        * This branch includes some Mac specific aliases and functions (as the name implies).
* Aegir
    * In use on my aegir hostmaster remote server
        * This branch includes some aegir specific aliases and functions. For exomple: git and drush commands are overridden by to be run by the aegir user; prepending them with <code>sudo -u aegir</code>. In addition, there are aliases to disable / enable the aegir user override (noAegir / useAegir).

-- NOTES --

This fork removes the [user] declaration from my personal .gitconfig file, to avoid adding my name to your work.

You can add your user information with these commands:
$ git config --global user.name "YourName";

$ git config --global user.email YourName@email.address;

-- Bug Reports --

https://bitbucket.org/_vid/git_bash_files/issues?status=new&status=open

-- CONTACT --

Current maintainer:
* Vid Rowan (_vid) - https://drupal.org/user/631512
