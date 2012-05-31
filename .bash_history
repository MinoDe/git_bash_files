ll
cd ..
ll
git rm -r hr2.hrdev.uoregon.edu/
git commit -m"removing hr2"
gpushom
cd ../../
cd hrdev-drupal-6.22
sudo chown -R aegir:aegir sites/
cd ../
cd hrdev-drupal-6.22-hr2-summercamp/
git st
git add .
git ci -m"new site hr3"
gpushom
gpullom
gpushom
gpullom
sudo chmod g+w 
cd sites/hr3
cd sites/hr3.hrdev.uoregon.edu/
gpullom
sudo vim /etc/php.ini 
sudo apachectl -t
sudo apachectl -k graceful
git st
ll
vim ../../.gitignore 
git status
cd ../../
git st
git ci -am"updating gitignore to allow sites/mods themes, etc..."
gpushom
gpullom
git status
sudo chown -R aegir:aegir sites/hr3.hrdev.uoregon.edu/
sudo chown -R aegir:aegir sites/hr3.hrdev.uoregon.edu/files/
sudo chown -R aegir:apache sites/hr3.hrdev.uoregon.edu/files/
sudo chmod -R g+w sites/hr3.hrdev.uoregon.edu/files/
git st
git add .
git ci -m"adding files dir to git"
gpushom
git st
git whatchanged
git commit -am"aegir changes to settings"
gpushom
ll
cd platforms
ll
cat atrium_stub.make
cd openatrium-1.0
ll
cd ..
cd /home/gitosis
ll
cd repositories
ll
cd fa_open_atrium.git
ll
cd branches
ll
cd ..
cd objects
ll
cd ed
ll
cd ..
ll
cd ..
ll
cd /var/aegir/
cd /home/gitosis/
l
ll
cd gitosis
ll
cd .
cd repositories
cd ..
ll
cd repositories
ll
cd fa_open_atrim.git
cd fa_open_atrium.git
l
ll
cd hooks/
ll
cat applypatch-msg.sample 
pwd 
cat pre-commit.sample 
cd /var/aegir/platforms/
ll
cd faprod-drupal-6.22/
ll
cd sites
ll
cd ..
cd platforms/
ll
cd hrpub-drupal-6.22-hr2-summercamp/
history | grep drush
cd sites/all/modules/; drush dl shib_auth
pwd
drush dl shib_auth-6.x-4.0-rc6
cd ..
cd hr.uoregon.edu/modules/
ll
pwd
cd ..
ll
gst
git st
git remote rm origin
cd ..
gst
git st
git add .
git remote -v
git remote add origin gitosis@fadev.uoregon.edu:hr_drupal6_aegir.git
git st
git ci -am"migrated site"
git st
git push origin master
git remote rm origin
git remote add origin gitosis@fadev.uoregon.edu:hr_hrpub.git
git push origin master
drush pm-list
cd sites/hr.uoregon.edu/
drush pm-list
sudo drush pm-list
drush dl feedback
sudo drush dl feedback
git st
git add .
git commit -am"adding changes from server"
pwd
git st
git pull origin master
gpullom
gst
git st
gpullom
git remote 0v
git remote -v
ll
cat .bashrc 
vim .bashrc
alias ll='ls -al'
alias gpushom='git push origin master'
alias gpullom='git pull origin master'
alias gst='git st'
alias gci='git ci'
cd platforms/
lll
ll
cd hrpub-drupal-6.22-hr2-summercamp/
gst
gci -am"aegir settings change"
gpullom
cd sites/hr.uoregon.edu/
ll
mkdir _assets
sudo mkdir _assets
ll
chown aegir:aegir -R _assets/
sudo chown aegir:aegir -R _assets/
ll
sudo chmod w-r -R _assets/
gpullom
gci -am"committing changes 1/2 made during failed pull"
gpullom
sudo chmod -R 777 _assets/
gpullom
sudo chown -R aegir:aegir _assets/
sudo chmod -R 664 _assets/
ll
sudo chmod -R 660 _assets/
sudo chmod -R 770 _assets/
ll
drush dl views-6.x-2.13
sudo drush dl views-6.x-2.13
cd ..
ll
cd summercamps.uoregon.edu/
sudo drush dl views-6.x-2.13
cd ..
ll
cd ..
ll
cd hrstage-drupal-6.22/
ll
cd sites/
ll
cd access-guide.hrstg.uoregon.edu/
sudo drush dl views-6.x-2.13
cd ../../
cd ..
ll
cd hrstg-drupal-6.22-hr2-summercamp/sites/
ll
cd hr3
cd hr3.hrstg.uoregon.edu/
sudo drush dl views-6.x-2.13
cd ..
sudo drush dl views-6.x-2.13
cd ..
cd hrstg-drupal-6.22-hr2-summercamp/
cd sites/
sudo chown -R aegir:aegir all/modules/
sudo chown -R aegir:aegir hr3.hrstg.uoregon.edu/modules/
sudo chown -R aegir:aegir hrb.hrstg.uoregon.edu/modules/
sudo chmod -R g+w hrb.hrstg.uoregon.edu/modules/
sudo chmod -R g+w hr3b.hrstg.uoregon.edu/modules/
sudo chmod -R g+w hr3.hrstg.uoregon.edu/modules/
sudo chmod -R g+w all/modules/
cd ../../../
cd platforms/
ll
cd hrpub-drupal-6.22-hr2-summercamp/
cd sites/
sudo chmod -R g+w all/modules/
sudo chmod -R g+w hr.uoregon.edu/modules/
sudo chmod -R g+w summercamps.uoregon.edu/modules/
sudo chown -R aegir:aegir all/modules/
sudo chown -R aegir:aegir hr.uoregon.edu/modules/
sudo chown -R aegir:aegir summercamps.uoregon.edu/modules/
cd ..
ll
sudo drush dl views-6.x-2.13
history | grep drush
sudo drush dl feedback
cd ..
cd hrdev-drupal-6.22
cd sites/
ll
cd access-guide.hrdev.uoregon.edu/
sudo drush dl views-6.x-2.13
sudo chown -R aegir:aegir modules/
sudo chmod -R g+w modules/
cd ../hr.hrdev.uoregon.edu/
sudo drush dl views-6.x-2.13
sudo chown -R aegir:aegir modules/
sudo chmod -R g+w modules/
cd ../../
cd ..
cd hrdev-drupal-6.22-hr2-summercamp/
sudo drush dl views-6.x-2.13
sudo chown -R aegir:aegir modules/
sudo chown -R aegir:aegir sites/all/modules/
sudo chmod -R g+w sites/all/modules/
cd ../../../
cd 
cd platforms/
sudo chown -R aegir:aegir hrdev-drupal-6.22
pwd
ll
cd hrdev-drupal-6.22-hr2-summercamp/
sudo drush dl view_bulk_operations
sudo drush dl views_bulk_operations-6.x-1.12
sudo chown -R aegir:aegir sites/all/modules/
cd ../hrpub-drupal-6.22-hr2-summercamp/
sudo drush dl views_bulk_operations-6.x-1.12
sudo chown -R aegir:aegir sites/all/modules/
gpullom
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
cat .gitignore 
git add .
gci -am"installed modules"
gpushom
gpullom
drush dl pathauto-6.x-1.6
cd ../hrdev-drupal-6.22-hr2-summercamp/
drush dl pathauto-6.x-1.6
cd ../hrstg-drupal-6.22-hr2-summercamp/
drush dl pathauto-6.x-1.6
sudo chown -R aegir:aegir sites/all/modules/
cd ../hrdev-drupal-6.22-hr2-summercamp/
sudo chown -R aegir:aegir sites/all/modules/
cd ../hrpub-drupal-6.22-hr2-summercamp/
sudo chown -R aegir:aegir sites/all/modules/
sudo drush dl token
sudo chown -R aegir:aegir sites/all/modules/
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
exit
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
ls -al sites/hr.uoregon.edu/modules/
history | grep drush
ls -al sites/modules/modules/
ls -al sites/all/modules/
sudo git rm -R sites/hr.uoregon.edu/modules/feedback
sudo git rm -r sites/hr.uoregon.edu/modules/feedback
cd sites/hr.uoregon.edu/modules/
ll
git rm -r feedback/
git rm -r feedback
sudo rm -R feedback/
cd ..
cd all mo
cd ..
cd 
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
sudo drush dl feedback
gst
gci -am"system updates"
git add .
gci -am"new files uploaded"
gpullom
gpushom
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
gci -am"system change"
gpullom
gpushom
gpullom
gst
gpullom
cd platforms/hrdev-drupal-6.22
ll
cd sites/
ll
cd access-guide.hrdev.uoregon.edu/
ll
ls -al modules/
cd ..
ll
sudo cp access-guide.hrdev.uoregon.edu recruitoutreach.hrdev.uoregon.edu
ll
cp --help
sudo cp -pR access-guide.hrdev.uoregon.edu recruitoutreach.hrdev.uoregon.edu
ll
cd recruitoutreach.hrdev.uoregon.edu/
ll
sudo rm settings.php 
sudo .git/
sudo rm -R .git/
sudo rm -R drushrc.php 
ls -al files/
cd files/
sudo rm 57159274.jpg 
sudo rm 84527901.jpg 
sudo rm lariviere_color_thumb.jpg 
sudo rm sb10065425g-001.jpg 
ll
ls -al pictures/
ls -al tmp
ls -al locations/
ls -al image
ls -al images
ls -al imagecache/
ls -al ctools/
ls -al css
cd 
ll
cd .ssh
ll
cd ..
ll
cd platforms/hrdev-drupal-6.22
cd sites/
ll
cd recruitoutreach.hrdev.uoregon.edu/
ll
vim settings.php
sudo vim settings.php
sudo chown aegir:aegir settings.php 
ll
git init
sudo git init
ll
sudo chown aegir:aegir .git 
git add .
sudo chown -R  aegir:aegir .git 
sudo chown -R aegir:aegir .git 
ll
git add remote origin gitosis@fadev.uoregon.edu:hr_aaeo_outreachrecruitment.git
ll
cd ..
ll
cd recuil
cd recruitoutreach.hrdev.uoregon.edu/
git add remote origin gitosis@fadev.uoregon.edu:hr_aaeo_recruitoutreach.git
sudo chown -R vid .git/
git add remote origin gitosis@fadev.uoregon.edu:hr_aaeo_recruitoutreach.git
git add remote gitosis@fadev.uoregon.edu:hr_aaeo_recruitoutreach.git
history 
history | git add remote
history | git add
git remote add origin gitosis@fadev.uoregon.edu:hr_aaeo_recruitoutreach.git
gst
git add .
sudo vim .gitignore
git add .
gci -am"initial commit"
ll
sudo chown aegir .gitignore 
sudo chown aegir:aegir .gitignore 
gst
gpushom
cd platforms/hrdev-drupal-6.22/sites/recruitoutreach.hrdev.uoregon.edu/
drush pm
drush
sudo drush
sudo drush pm-update
sudo drush
cd ../../
sudo drush pm-update
ll
git remote -v
cd
ll
cd platforms/
ll
cd hrdev-drupal-6.22
cd ..
ll
sudo drush dl drupal-6.x-6.22
ll
mv drupal-6.22 hrdev-drupal-6.22b
sudo mv drupal-6.22 hrdev-drupal-6.22b
cd hrdev-drupal-6.22
cd sites/
ll
mv . ../../hrdev-drupal-6.22b/sites/
sudo mv . ../../hrdev-drupal-6.22b/sites/
sudo mv recruitoutreach.hrdev.uoregon.edu/ ../../hrdev-drupal-6.22b/sites/
ll
cd ../../hrdev-drupal-6.22b/
ll'
ll
ll
cd sites/
ll
cd ../../hrdev-drupal-6.22/sites/
ll
sudo mv access-guide.hrdev.uoregon.edu/ ../../hrdev-drupal-6.22b/sites/
cd ../../hrdev-drupal-6.22/sites/
ll
cd ../../hrdev-drupal-6.22b/sites/
ll
cd ..
ll
cd ../hrdev-drupal-6.22-hr2-summercamp/
ll
cd ..
cd hrdev-drupal-6.22
ll
cd ../hrdev-drupal-6.22b/sites/
sudo cp --help
sudo cp -pR access-guide.hrdev.uoregon.edu/ ../../hrdev-drupal-6.22/sites/
sudo cp -pR recruitoutreach.hrdev.uoregon.edu/ ../../hrdev-drupal-6.22/sites/
cd ../../hrdev-drupal-6.22b
cd sites/
ll
rm -R access-guide.hrdev.uoregon.edu/
sudo rm -R access-guide.hrdev.uoregon.edu/
ll
sudo rm -R recruitoutreach.hrdev.uoregon.edu/
cd ..
sudo chown -R aegir:aegir hrdev-drupal-6.22b
ll
cat .gitignore
sudo chown -R aegir:aegir hrdev-drupal-6.22-hr2-summercamp/
cd hrstg-drupal-6.22-hr2-summercamp/
cd ..
cd hrdev-drupal-6.22b
ll
cat .htaccess 
sudo apachectl -t
cd platforms/
ll
sudo chown -R aegir:aegir hrdev-drupal-6.22
sudo chown -R aegir:aegir hrdev-drupal-6.22b
ll hrdev-drupal-6.22b/sites/
cd hrdev-drupal-6.22/sites/
ll
cd recruitoutreach.hrdev.uoregon.edu/
ll
sudo drush pm-update
drush dl webform-6.x-3.11
sudo drush dl webform-6.x-3.11
sudo drush
sudo drush updatedb
cd platforms/hrdev-drupal-6.22
ll
sudo rm -R .git
cd ..
sudo chown -R aegir:aegir hrdev-drupal-6.22
sudo chown -R aegir:aegir hrdev-drupal-6.22/sites/
sudo chown -R aegir:aegir hrdev-drupal-6.22/sites/recruitoutreach.hrdev.uoregon.edu/
sudo chown -R aegir:aegir hrdev-drupal-6.22/sites/access-guide.hrdev.uoregon.edu/
sudo chown -R aegir:aegir hrdev-drupal-6.22/sites/all/
cd platforms/hrdev-drupal-6.22b
cd sites/
ll
mkdir recruitoutreach.aaeo.hrdev.uoregon.edu
sudo mkdir recruitoutreach.aaeo.hrdev.uoregon.edu
sudo chown -R aegir:aegir recruitoutreach.aaeo.hrdev.uoregon.edu/
ll
cd recruitoutreach.aaeo.hrdev.uoregon.edu/
vim settings.php
sudo vim settings.php
ll
cd ..; sudo chown -R aegir:aegir recruitoutreach.aaeo.hrdev.uoregon.edu/
ll
cd recruitoutreach.aaeo.hrdev.uoregon.edu/
ll
sudo chmod -R g+w recruitoutreach.aaeo.hrdev.uoregon.edu/
cd ..
ll
cd hrdev-drupal-6.22b
ll
cd sites/
ll
sudo chown -R aegir:aegir recruitoutreach.aaeo.hrdev.uoregon.edu/
cd platforms/
ll
cd hrdev-drupal-6.22b
ll
cd sites/
ll
cd ..
ll
history | grep cp
sudo cp -pR hrstage-drupal-6.22/ hrpub-drupal-6.22/
ll
cd hrpub-drupal-6.22
ll
cd sites/
ll
sudo rm -R access-guide.hrstg.uoregon.edu/
sudo rm -R recruitoutreach.aaeo.hrstg.uoregon.edu/
ll default/
sudo rm default/default.settings.php 
ll all/
sudo rm all/README.txt 
cd ..
ll
sudo rm -R .git/
ll
cd ..
ll
cd ..
cd platforms/
cd hrpub-drupal-6.22-hr2-summercamp/
gst
sudo vim .gitignore 
gst
sudo vim .gitignore 
gst
sudo vim .gitignore 
gci -am"ignoring drushrc"
gpullom
gpushom
cd sites/all/themes/hr2newsflash/
ll
cd ..
sudo chown -R aegir:aegir hr2newsflash/
cd hr2newsflash/
ll
cd ..
cd ../..
ll
cd ..
cd ../
cd hrpub-drupal-6.22
cd sites/recruitoutreach.aaeo.uoregon.edu/
ll
git init
sudo git init
git add .
ll
sudo chown -R aegir:aegir .git/
ll
sudo chmod -R g+w .git/
ll
git add .
vim .gitignore
sudo vim .gitignore
sudo chown -R aegir:aegir .gitignore 
ll
git add .
gci -m"inital commit"
cd platforms/hrpub-drupal-6.22
ll
cd sites/
ll
cd recruitoutreach.aaeo.uoregon.edu/
ll
gst
git remote add origin gitosis@fadev.uoregon.edu:hr_aaeo_recruitoutreach.git
gpushom
gst
git add .
gci -m"initial commit with hrpub content"
gpushom
gpullom
cd .././../
cd .
cd ..
cd hrpub-drupal-6.22-hr2-summercamp/
cd sites/hr.uoregon.edu/
gst
gpullom
cd ../../../hrpub-drupal-6.22/sites/recruitoutreach.aaeo.uoregon.edu/
ll
ll modules/htmlpurifier/
cd libraries/
cd ..
cd modules/htmlpurifier/library/
ll
cd ../../.././
cd ../../../
cd hrpub-drupal-6.22-hr2-summercamp/sites/hr.uoregon.edu/
gst
gci -am"aegir changes"
gpullom
gpushom
cd platforms/
ll
cd openatrium-1.0/
ll
cd sites/
ll
mkdir projects.drupaldevs.fadev.uoregon.edu
sudo mkdir projects.drupaldevs.fadev.uoregon.edu
ll
sudo chown -R aegir:aegir projects.drupaldevs.fadev.uoregon.edu/
cd projects.drupaldevs.fadev.uoregon.edu/
sudo vim settings.php
ll
cd ..
sudo chown -R aegir:aegir projects.drupaldevs.fadev.uoregon.edu/
ll projects.drupaldevs.fadev.uoregon.edu/
sudo chmod -R g+w projects.drupaldevs.fadev.uoregon.edu/
sudo chown -R aegir:aegir projects.drupaldevs.fadev.uoregon.edu/
ll projects.drupaldevs.fadev.uoregon.edu/
ll projects.drupaldevs.fadev.uoregon.edu/modules/
cd projects.drupaldevs.fadev.uoregon.edu/
ll
mv modules/ ~/
cd 
ll
mkdir openatrium_temp
mv modules/ openatrium_temp/
cd platforms/openatrium-1.0/sites/projects.drupaldevs.fadev.uoregon.edu/
cat settings.php 
ll
mv files/ ~/openatrium_temp/
cd ..
ll
cd ..
ll
cd ..
ll
cd hrdev-drupal-6.22-hr2-summercamp/sites/hr4.hrdev.uoregon.edu/
drush dl webform-6.x-3.14
sudo drush dl webform-6.x-3.14
cd modules
ll
sudo rm -R feedback/
sudo rm -R webform/
cd ..
sudo drush dl webform-6.x-3.14
drush dl webform2pdf
drush dl webform_validation
cd ../
cd openatrium-1.0/sites/projects.drupaldevs.fadev.uoregon.edu/
ll
sudo vim settings.php 
ll
sudo vim settings.php 
cd ..
sudo rm -R projects.drupaldevs.fadev.uoregon.edu/
sudo mkdir projects.drupaldevs.fadev.uoregon.edu/
ll
sudo chown -R aegir:aegir projects.drupaldevs.fadev.uoregon.edu/
ll
cd projects.drupaldevs.fadev.uoregon.edu/
ll
sudo vim settings.php
ll
cd ..
sudo chown -R aegir:aegir projects.drupaldevs.fadev.uoregon.edu/
ll
sudo rm -R projects.drupaldevs.fadev.uoregon.edu/
ll
sudo mkdir drupaldevs2.fadev.uoregon.edu
sudo chown -R aegir:aegir drupaldevs2.fadev.uoregon.edu/
sudo chmod -R g+w drupaldevs2.fadev.uoregon.edu/
sudo chown -R aegir:aegir drupaldevs2.fadev.uoregon.edu/
sudo chmod -R g+w drupaldevs2.fadev.uoregon.edu/
ll
cd ..
ll
drush pm-update
sudo drush pm-update
cd sites/drupaldevs3.fadev.uoregon.edu/
sudo drush pm-update
cd ../drupaldevs.fadev.uoregon.edu/
sudo drush pm-update
ll
ls modules/
ll
cd modules/
ll
cd ../../
ll
sudo mkdir fadev-openatrium-1.0_imported
sudo chown -R aegir:aegir fadev-openatrium-1.0_imported/
sudo chmod -R g+w fadev-openatrium-1.0_imported/
sudo chown -R aegir:aegir fadev-openatrium-1.0_imported/
cat .bash_profile 
cat .bashrc 
ll
exit
ll
du --help
cd 
cd ..
ll
du -hd1 vid
du -hD1 vid
du -h vid
rm -R vid/openatrium_temp/
sudo rm -R vid/openatrium_temp/
du -h vid
du -h ~
du --help
du -hc ~
du -hc 
du -hc /home10/maxbrons/
du --help
du -hc --max-depth=1 /home10/maxbrons/
sudo du -hc --max-depth=1 /home10/maxbrons/
sudo du -hc --max-depth=1 /home8/
sudo du -hc --max-depth=1 /home7/
sudo du -hc --max-depth=1 /home11/
sudo du -hc --max-depth=1 /home10
sudo du -hc --max-depth=1 /home6
sudo du -hc --max-depth=1 /home5
sudo du -hc --max-depth=1 /home4
sudo du -hc --max-depth=1 /home3
sudo du -hc --max-depth=1 /home2
sudo du -hc --max-depth=1 /home1
sudo du -hc --max-depth=1 /home12/
ll /
sudo du -hc --max-depth=1 /home13
sudo du -hc --max-depth=1 /home14
sudo du -hc --max-depth=1 /home15
sudo du -hc --max-depth=1 /home16
cd platforms/hrdev-drupal-6.22-hr2-summercamp/
drush dl vim webform2pdf
drush pm-update
sudo drush pm-update
cd sites/all/
ll
cd ..
ll
cd hr4.hrdev.uoregon.edu/
sudo drush pm-update
cd ../../
drush dl token
drush cc
cd sites/hr4.hrdev.uoregon.edu/
drush cc
sudo drush cc
drush
sudo drush
drush updatedb
cd ../../
drush updatedb
sudo drush updatedb
cd sites/hr4.hrdev.uoregon.edu/
sudo drush updatedb
drush pm-update
cd ../../
drush pm-update
cd sites/hr4.hrdev.uoregon.edu/
sudo drush pm-update
cd ../../
drush dl nice_menus imce
sudo drush updatedb
cd sites/hr4.hrdev.uoregon.edu/; sudo drush updatedb
cd ../../; sudo drush dl shib_auth
cd sites/hr4.hrdev.uoregon.edu/; sudo drush updatedb
cd ..
function module_invoke_all() {   $args = func_get_args();
  $hook = $args[0];
  unset($args[0]);
  $return = array();
  foreach (module_implements($hook) as $module) {
    $function = $module .'_'. $hook;
g
'){
watchdog('cron', "hit $module cron");
     }
sudo chown -R aegir:aegir sites/hr4.hrdev.uoregon.edu/
ll
cd sites/
ll
cd hr4.hrdev.uoregon.edu/
ll
history | grep drush
cd platforms/hrpub-drupal-6.22-hr2-summercamp/sites/hr.uoregon.edu/
ll
cat settings.php 
vim local.settings.php 
ll
gst
gci -am"updated local settings to include a higher max execution time... cron was timing out"
gpullom
gpushom
ll
cd ../../
ll
vim local.settings.php 
vim sites/hr.uoregon.edu/local.settings.php 
cd includes/
sudo vim module.inc 
host 67.208.104.194
cd ..
sudo drush dl webform-6.x-3.11 
sudo drush updatedb
cd sites/hr.uoregon.edu/; sudo drush updatedb
cd ../../; sudo drush dl webform-6.x-3.14 webform2pd
y
cd sites/hr.uoregon.edu/; sudo drush updatedb
sudo drush pm-update
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
git add .
gci -am"updated modules"
ll
cd ..
sudo chmod -R g+w hrpub-drupal-6.22-hr2-summercamp/
cd hrpub-drupal-6.22-hr2-summercamp/
ll
gci -am"updated modules"
ll
cat ~/.gitconfig 
git ign
vim ~/.gitconfig 
sudo vim .gitignore 
git ign
gst
sudo vim .gitignore 
git ign
sudo vim .gitignore 
git rm --cached sites/summercamps.uoregon.edu/drushrc.php
gst
git add .
gci -am "drush updated files"
gpullom
gpushom
gst
gpullom
gpushom
cd ..
ll
cd fadev-openatrium-1.0_imported/
gst
cd sites/
ll
cd uodrupaldevs.fadev.uoregon.edu/
ll
ll modules/
cd ../../
cd sites/all/modules/
ll
ll custom
cd ..
ll
ll themes/
ll libraries/
cd modules/
mv custom/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
cd ../../uodrupaldevs.fadev.uoregon.edu/modules/
ll
cd custom/
ll
rm galleria_override_js
sudo rm -R galleria_override_js/
sudo rm -R secondsubmit/
sudo rm -R uoasymptote/
cd ../../
ll
cd ../
cd all/modules/
ll
sudo mv pathauto/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
sudo mv append_body_class_w_node_type_jquery/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
sudo mv views_hierarchy/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
sudo mv w3bform_encryption/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
ll
cd ../../
cd ../
cd profiles/
ll
cd openatrium/
ll
cd modules/
ll
ll atrium_features/
ll contrib/
ll developer/
cd ../../
cd ../
cd sites/uodrupaldevs.fadev.uoregon.edu/modules/
ll
mv append_body_class_w_node_type_jquery/ custom/
ll
sudo rm -R views_hierarchy/
sudo rm -R w3bform_encryption/
cd custom/
ll
sudo rm -R append_body_class_w_node_type_jquery/
cd ../../
cd ..
cd all/modules/
ll
sudo rm -R jquerymenu_overrides/
ll
cd ..
sudo drush cc
cd sites/uodrupaldevs.fadev.uoregon.edu/
sudo drush cc
cd ..
cd hrpub-drupal-6.22-hr2-summercamp/
cp -P sites/all/modules/image/image.imagemagick.inc includes/
cd includes/
ll
sudo chown aegir:aegir image.imagemagick.inc 
ll
cd ..
cd sites/all/modules/image/
ll
cp --help
cd ..
ll
cd hr.uoregon.edu/
ll
cd files/
ll
cd tmp/
pwd
cd ../../../
cd ..
cp -p sites/all/modules/image/image.imagemagick.inc includes/
sudo cp -p sites/all/modules/image/image.imagemagick.inc includes/
cd inlc
cd includes/
ll
cd ../../
cd hrdev-drupal-6.22-hr2-summercamp/
drush dl admin
cd sites/hr4.hrdev.uoregon.edu/; drush updatedb
cd sites/hr4.hrdev.uoregon.edu/; sudo drush updatedb
cd siteush updatedb
sudo drush updatedb
drush cc
sudo drush cc
cd ../../../
cd hrpub-drupal-6.22-hr2-summercamp/
drush dl admin
cd /
ll
cd var/
ll
cd platforms/fadev-6
cd platforms/
ll
cd fadev-drupal-6.22/
ll
cd sites/
ll
cd sites/
pwd
cat ~/.gitconfig 
cd ereem.fadev.uoregon.edu/
gst
git df
sudo git df
sudo git diff
git whatchanged
gst
sudo git diff *.info
sudo git diff themes/emergency_management/emergency_management.info
sudo git diff themes/emergency_management/templates/block.tpl.php 
gitk
git logv
exit
vim .bashrc 
cat .bash_profile 
cd ..
exit
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
ll
gst
cat .gitignore 
git rm --cached drushrc.php
gst
gci -am"aegir settings update and ignoring drushrc"
gst
git add .
gst
gci -am"adding new files from users"
gst
ll
gpullom
gpushom
gpullom
gpullom
gst
gci -am"aegir settings update"
gpushom
crontab -e
cd /var/www/html/ac/
cd tasks/
ll
exit
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
git add .
gci -am"mod updates and new user files"
gpullom
gpushom
git remote -v
gpullom
ll
cat .gitignore 
git remote -v
gst
ll
pwd
ll
cat .gitignore 
pullom\
pullom
gpullom
sudo drush dl tagging
sudo chown -R aegir:aegir sites/all/modules/
cd sites/hr.uoregon.edu/
sudo drush updatedb
cd ../
cd summercamps.uoregon.edu/
sudo drush updatedb
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
git add .
gci -am"module updates"
gpullom
gpushom
gpullom
gpullom
ll sites/all/themes/hr2newsflash/
cd sites/all/themes/hr2newsflash/
ll
cd ..
ll
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
sudo -u aegir drush dl webform_validation
sudo drush dl webform_validation
sudo chown -R aegir:aegir sites/all/modules/
cd sites/hr.uoregon.edu/
sudo drush updatedb
cd ../summercamps.uoregon.edu/
sudo drush updatedb
cd ../../
su aegir
picodegallo
su aegir
su aegir drush
cd platforms/
cd hrpub-drupal-6.22-hr2-summercamp/
su aegir drush
su aegir
su aegir /var/aegir/drush/drush.php
su aegir /var/aegir/drush/drush.php
su aegir /var/aegir/drush/drush
sudo -u aegir drush
sudo -u aegir ls
sudo -u aegir apachectl -t
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
git add .
gci -am"drush site updates"
gpullom
gpushom
gpullom
ll
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
ll
cd v_includes/
ll
chmod 660 _ldap_test.php 
sudo chmod 660 _ldap_test.php 
ll
cd ..
gst
gci -am"aegir settings change"
gpullom
gpushom
gpullom
ll sites/all/modules/admin/
cd ..
cd hrpub-drupal-6.22-hr2-summercamp/
sudo chmod -R g+w sites/all/modules/
gpullom
rm sites/all/themes/hr2newsflash/images/green_texture4c.gif 
gpullom
rm sites/all/themes/hr2newsflash/images/green_texture4d.gif 
gpullom
gst
gci -am"commiting changes from a failed merge"
gpullom
gst
gpullom
cd ..
ll
ll
cd platforms/
cd hrdev-drupal-6.22
cd hrdev-drupal-6.22b
drush pm-update
sudo drush pm-update
ll
drush
drush st
cd sites/
ll
cd all/
ll
cd ..
cd ..
cd sites/
ll
ll
cd ../../
cd ../
ll
cd platforms/
cd hrpub-drupal-6.22-hr2-summercamp/
cd includes/module.inc 
cd includes/
ll
vim module.inc 
vim module.inc 
pwd
ll
vim module.inc 
pwd
cd ..
cd sites/hr.uoregon.edu/
su aegir drush cron
su aegir drush cron
su aegir drush cron
ll
history | grep aegir
su aegir /var/aegir/drush/drush cron
cd ../../
cd ..
cd hrdev-drupal-6.22b
ll
cd sites/patchtestadmin.hrdev.uoregon.edu/
ll
cd modules/
ll
cd admin/
ll
git
git apply --stat admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
git apply --check admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
vim admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
git apply --check admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
vim admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
cat admin.install
vim admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
git apply --stat admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
git apply --check admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
pwd
vim admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
vim admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
vim admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
git apply --check admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
vim admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
git apply --check admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
pwd
cat /var/aegir/platforms/hrdev-drupal-6.22b/sites/patchtestadmin.hrdev.uoregon.edu/modules/admin/admin.install
vim admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
pwd
git apply --stat admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
git apply --check admin.install_6x2xdev-improve_admin_links_target_deletes_specifically_navigation_menu_items-611254-7b.patch 
cd platforms/hrpub-drupal-6.22-hr2-summercamp/sites/hr.uoregon.edu/; su aegir /var/aegir/drush/drush cron
history | grep cron
history | grep cron -B2
su aegir /var/aegir/drush/drush cron --debug
sudo ls -al /var/log/httpd/
su aegir
su aegir /var/aegir/drush/drush core-cron --debug
su aegir
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
gci -am"aegir settings update"
gpullom
exit
ssh -A fadev
exit
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
gpushom
gpullom
gst
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
cd sites/hr.uoregon.edu/
cd ..
cd ..
drush dl google_analytics
gst
cd sites/all/modules/
ll
sudo chown -R aegir:aegir google_analytics/
sudo chmod -R g+w google_analytics/
cd ..
cc
cd ..
cd ..
gst
git add .
gci -am"add aegir generated files"
gpullom
gpushom
gpullom
gpullom
su aegir
gst
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
git add .
gci -am"adding aegir and sitedoc changes"
gpullom
gpushom
gpullom
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
gst
gpullom
alias gpullom2="echo '#git pull origin master'; git pull origin master;"
gpullom2
cd 
vim .bash_profile 
vim .gitconfig 
vim .bash_profile 
vim .bashrc 
vim .bash_profile 
vim .bashrc 
alias ll="echo '#ls -al'; ls -al"
alias gpushom="echo '#git push origin master'; git push origin master;"
alias gpullom="echo '#git pull origin master'; git pull origin master;"
alias gst="echo '#git st (status)'; git st;"
alias gci="echo '#git commit'; git ci;"
gst
cd platforms/hrpub-drupal-6.22-hr2-summercamp/sites/hr.uoregon.edu/
drush cc
su aegir drush cc
su aegir /var/aegir/drush/drush cc
su aegir /var/aegir/drush/drush cc
su aegir /var/aegir/drush/drush cc
vim ~/.bashrc 
# User specific aliases and functions
alias ll="echo '#ls -al'; ls -al"
alias gpushom="echo '#git push origin master'; git push origin master;"
alias gpullom="echo '#git pull origin master'; git pull origin master;"
alias gst="echo '#git status'; git st;"
alias gci="echo '#git commit'; git ci"
pwd
cd ../../..
cd hrdev-drupal-6.22b
ll
sudo chmod g+w sites/
cd sites/
ll
ll
sudo chown -R aegir:aegir cstdac.hrdev.uoregon.edu/
cd cstdac.hrdev.uoregon.edu/
sudo chmod g+s files/
cd ..
ll
cd cstdac.hrdev.uoregon.edu/
rm settings.php 
ll
cat drushrc.php 
sudo cat drushrc.php 
sudo mv drushrc.php .drushrc.php
mysql://cstdac:cstdac09-10@hrdev.uoregon.edu/cstdac
cd ..
cd cstdac.hrdev.uoregon.edu/modules/gcal_events/
ll
sudo chmod -R 777 cache/
ll
ll
cd ../../../
cd cstdac.hrdev.uoregon.edu/files/
ll
sudo chown -R aegir:apache gcal_events/
sudo chmod g+s files/
sudo chmod g+s gcal_events/
host cstdac.uoregon.edu
cat .bashrc 
cat ~/.bashrc 
cd ../../
cd ../../
cd hrpub-drupal-6.22-hr2-summercamp/
gst
ll sites/all/modules/views/
gst
git add .
gci -am"aegir settings"
gpullom
gpushom
gpullom
ll sites/hr.uoregon.edu/
cd ..
ll
cd hrpub-drupal-6.22-hr2-summercamp/sites/all/modules/
ll
cd ..
sudo chown -R aegir:aegir modules/
cd ../default/
ll
cd ../hr.uoregon.edu/
ll
gst
chmod 777 local.settings.php 
sudo chown aegir:apache local.settings.php 
gpullom
cat local.settings.php 
chmod 777 local.settings.php 
sudo chmod 777 local.settings.php 
gpullom
git diff
gci -am"commit to be able to pullin new version..."
gpullom
cd ..
ll
cd default/
ll
gst
pwd
cd ../hr.uoregon.edu/
ll
git diff
vim local.settings.php 
gpullom
gpullom
gci -am"arg"
gpullom
git diff 
vim local.settings.php 
gci -am"more pointless commits"
gpullom
gst
gpushom
ll
chmod 660 local.settings.phpl
chmod 660 local.settings.php
sudo chmod 660 local.settings.php
ll
ll
cat .bash_profile 
vim .bash_profile 
cat .bashrc 
cd platforms/
ll
cd hrstage-drupal-6.22/sites/cstdac.hrstg.uoregon.edu/
cd images/
mv * ../files/images/
cd ../files/images
ll
cd ..
ll
cd ..
sudo chmod -R a+r files/
ll
cd files/
ll
cd ..
drush dl scanner
drush
su aegir drush dl scanner
su aegir 
ll
su aegir /var/aegir/drush/drush dl scanner
su aegir /var/aegir/drush/drush pm-update
su aegir /var/aegir/drush/drush updatedb
pwd
cd ../../../
ll
cd fadev-openatrium-1.0_imported/
ll
ll sites/
ll sites/uodrupaldevs.fadev.uoregon.edu/
ll sites/all/
cd ../../\
cd ../../
cd platforms/
cd hrstage-drupal-6.22/sites/cstdac.hrstg.uoregon.edu/
ll files/images
ll images/
rm images/
rm -R images/
sudo rm -R images/
ll
mv downloads/ files/
sudo mv downloads/ files/
ll
rm .drushrc.php 
sudo rm .drushrc.php 
ll
ll private/
ll files/
ll tem
.. files/temp
ll files/temp
ll 
cd private/
ll temp/
cd ..
..
vim .bashrc 
vim ~/.bashrc 
vim ~/.bashrc 
vim ~/.bashrc 
vim ~/.bashrc 
source ~/.bashrc 
..
ll
cd cstdac.hrstg.uoregon.edu/
ll
ll files/
ll
cd ..
cd ..
cd ..
ll
cd fadev-openatrium-1.0_imported/
ll
cd ..
mkdir fadev-openatrium-1.0_imported_b
sudo mkdir fadev-openatrium-1.0_imported_b
ll
sudo chown -R aegir:aegir fadev-openatrium-1.0_imported_b/
cd fadev-openatrium-1.0_imported_b/
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz | tar -xzvpf atrium-1-0
ll
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz | tar -xzvpf 
ll
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz | gzip -dc | tar -x; rm atrium-1-0.tgz;
ll
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz; gzip -dc atrium-1-0.tgz | tar -x; rm atrium-1-0.tgz;
ll
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz;
ll
cd ..
ll
sudo chmod -R g+w fadev-openatrium-1.0_imported_b/
cd fadev-openatrium-1.0_imported_b
ll
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz;
ll
rm atrium-1-0.tgz 
ll
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz | gzip -dc | tar -x; rm atrium-1-0.tgz;
ll
extract atrium-1-0.tgz 
ll
ll atrium-1.0/
ll
vim download_OA.txt
vim download_OA.txt
ll sites
cd atrium-1.0/
cd sites/
ll
lr
cd ../../../
ll
sudo rm -R fadev-openatrium-1.0_imported_b/
vim .bashrc 
lg
ll
gst
cd platforms/
ll
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz; extract atrium-1-0.tgz; rm atrium-1-0.tgz;
ll
sudo wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz; sudo extract atrium-1-0.tgz; sudo rm atrium-1-0.tgz; mv atrium-1-0 openatrium-1-0-dl
ll
cat ~/.bashrc 
/extra
ll
lg
ll
sudo wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz; extract atrium-1-0.tgz; sudo rm atrium-1-0.tgz; sudo mv atrium-1-0 openatrium-1-0-dl
ll
sudo mkdir openatrium-1.0-dl; sudo chown -R  aegir:aegir openatrium-1.0-dl; sudo chmod -R g+w openatrium-1.0-dl;  cd openatrium-1.0-dl; sudo wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-0.tgz; extract atrium-1-0.tgz; rm atrium-1-0.tgz; 
ll
cd ..
ll
cd openatrium-1.0
..
cd openatrium-1.0-
cd openatrium-1.0-dl/
ll
ll atrium-1.0/
cd ..
ll
cat ~/.bashrc 
cd
ll
vim .bashrc 
source ~/.bashrc 
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
vim .bashrc 
source ~/.bashrc 
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
ll
cd ..
rm -R temp-openatrium/
sudo rm -R temp-openatrium/
vim .bashrc 
vim .bashrc 
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
cd ..
sudo rm -R temp-openatrium/
vim .bashrc 
source ~/.bashrc 
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
ll
vim .bashrc 
source ~/.bashrc 
rm -R temp-openatrium/
sudo rm -R temp-openatrium/
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
ll
history | grep backu
history | grep bac
cd platforms/
l
ll
cd openatrium-1.0-dl/
ll
cd ..
rm -R openatrium-1.0-dl/
sudo rm -R openatrium-1.0-dl/
vim ~/.bashrc 
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
ll
vim ~/.bashrc 
source ~/.bashrc 
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
ll
vim ~/.bashrc 
source ~/.bashrc 
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
ll
vim ~/.bashrc 
vim ~/.bashrc 
source ~/.bashrc 
mkOAplatform http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-1.tgz
ll
cd ..
cd temp-openatrium/
cd ..
ll
sudo rm -R temp-openatrium/
top
cd /etc/httpd/
ll
cd conf.d/
ll
cd aegir.conf 
cat aegir.conf 
cat /var/aegir/config/server_master/apache/vhost.d
sudo cat /var/aegir/config/server_master/apache/vhost.d
cd /var/aegir/config/server_master/apache/vhost.d
su aegir
sudo apachectl -k graceful
sudo ls
top
df
ll /var/remote.bexec/
cd
cd /var/www/html/
ll
cd ac/
ll
ll public/
ll
ll public/
lsof
lsof | grep DEL
sudo lsof | awk '$5 == "REG" {freq[$2]++ ; names[$2] = $1 ;} END {for (pid in freq) print freq[pid], names[pid], pid ; }' | sort -n -r -k 1,1
sudo lsof -s | awk '$5 == "REG"' | sort -n -r -k 7,7 | head -n 50
sudo lsof -s | awk '$5 == "DELG"' | sort -n -r -k 7,7 | head -n 50
sudo lsof -s | awk '$5 == "DEL"' | sort -n -r -k 7,7 | head -n 50
sudo lsof -s | awk '$4 == "DEL"' | sort -n -r -k 7,7 | head -n 50
sudo lsof -s | awk '$5 == "DEL"' | sort -n -r -k 7,7 | head -n 50
sudo lsof -s | awk '$5 == "DEL"' | sort -n -r -k 7,7
sudo lsof -s | awk '$5 == "DEL"' | sort -n -r -k 7,7 | head
sudo lsof -s | awk '$5 == "DEL"' | sort -n -r -k 7,7 | head -n 50
sudo lsof -s | awk '$4 == "DEL"' | sort -n -r -k 7,7 | head -n 50
sudo lsof -s | awk '$4 == "DEL"' | sort -n -r -k 7,
sudo lsof -s | awk '$4 == "DEL"' | sort -n -r -k 7,7
sudo lsof -s | awk '$4 == "DEL" && $5 == "REG"' | sort -n -r -k 7,7
cd
cd platforms/hrpub-drupal-6.22
cd sites/recruitoutreach.aaeo.uoregon.edu/
gst
gci -am"system updates"
gpullom
exit
cd platforms/hrpub-drupal-6.22
cd sites/recruitoutreach.aaeo.uoregon.edu/
gpullom
gpushom
gpullom
drush dl webform_validation
su aegir /var/aegir/drush/drush dl pm-update
su aegir /var/aegir/drush/drush dl webform_validation
su aegir /var/aegir/drush/drush updatedb
ll
cd platforms/
ll
ll hrstage-drupal-6.22/sites/
cd hrstage-drupal-6.22/sites/cstdac.hrstg.uoregon.edu/
ll
git init
cd ..
sudo chmod -R g+w cstdac.hrstg.uoregon.edu/
cd cstdac.hrstg.uoregon.edu/
ll
git init
git add .
vim .gitignore
git add .
git remote add origin gitosis@fadev.uoregon.edu:hr_cstdac.git
gci -am"initial commit"
gpushom
pwd
gpullom
pwd
ll
ll themes/uowebzen/
gpullom
sudo chown -R aegir:aegir themes/uowebzen/
cd ..
sudo chmod g+s cstdac.hrstg.uoregon.edu/
ll cstdac.hrstg.uoregon.edu/
cd cstdac.hrstg.uoregon.edu/
sudo chown -R vid:aegir .gitignore 
sudo chown -R vid:aegir .git
sudo chown -R aegir:aegir .git
sudo chown -R aegir:aegir .gitignore 
gst
cd ../
cd all
ll
pwd
cd ../../../hrpub-drupal-6.22
cd sites/all/
ll
mkdir modules
sudo mkdir modules
cd ..
ll
sudo chown -R aegir:aegir all/
ll all/
sudo chmod g+ws all/
ll
cd all
ll
cd ..
ll
sudo chmod -R g+ws all/
ll all/
sudo chown -R aegir:aegir all/
ll
cd ..
sudo -u aegir drush pm-update
sudo -u aegir drush dl imce
cd sites/all/modules/
ll
ll imce/
ll
cd customerror/
ll
open customerror.module 
open customerror.in
open customerror.info 
sudo -u aegir drush pm-update
cd platforms/hrpub-drupal-6.22
sudo -u aegir drush pm-update
cd sites/cstdac.uoregon.edu/
sudo -u aegir drush pm-update
sudo vim sudo
sudo visudo
ps -eo "ruser,pid,ppid,lstart,args" | egrep "PID|crond"
cd platforms
ll
cd hrstg-drupal-6.22-hr2-summercamp/
cd sites/
cd ..
sudo -u aegir drush pm-update
ll sites/
cd sites/summercamps.hrstg.uoregon.edu/
sudo -u aegir drush pm-update
ll modules/
cd ..
sudo -u aegir drush pm-update
y
cd summercamps.hrstg.uoregon.edu/
sudo -u aegir drush pm-update
y
cd ../hr3.hrstg.uoregon.edu/
sudo -u aegir drush pm-update
ll ../summercamps.hrstg.uoregon.edu/modules/
sudo -u aegir drush pm-update
cd ../hrb.hrstg.uoregon.edu/
sudo -u aegir drush pm-update
cd ../../
cd ../
ll
cd hrpub-drupal-6.22-hr2-summercamp/
cd sites/hr.uoregon.edu/
sudo -u aegir drush pm-update
cd ..
cd ..
..
ll
ll makeFiles/
cat fadev-drupal-6.22/
cd fadev-drupal-6.22/
ll
ll sites/
..
cd makeFiles/
..
ll
..
ll
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
cd sites/
ll
cd hr.uoregon.edu/
sudo -u aegir drush pm-update
cd ../summercamps.uoregon.edu/
sudo -u aegir drush pm-update
cd ../../../
ll
cp hrpub-drupal-6.22-hr2-summercamp/ hrstg-drupal-6.22-hr2-summercamp-1-18-12/
ll
sudo cp hrpub-drupal-6.22-hr2-summercamp/ hrstg-drupal-6.22-hr2-summercamp-1-18-12/
ll 
ll hrpub-drupal-6.22-hr2-summercamp/
cd hrpub-drupal-6.22-hr2-summercamp/
ll sites/hr.uoregon.edu/
ll sites/all/modules/
ll
sudo chown aegir:aegir favicon.ico 
sudo chown aegir:aegir .gitignore 
gst
cat .gitignore 
git add .
gci -am"module updates"
gpushom
gpullom
ll sites/hr.uoregon.edu/_assets/
..
cd hrpub-drupal-6.22-hr2-summercamp/sites/
ll
cd hr.uoregon.edu/
ll
cd _assets/
ll
cd ..
sudo chown -R aegir:aegir _assets/
cd _assets/
ll
cd ..
ll
cd 
ll
cd platforms/hrpub-drupal-6.22-hr2-summercamp/sites/all
ll
ll libraries/
ll ../hr.uoregon.edu/libraries/
gst
gst -am"aegir settings change"
gci -am"aegir settings change"
gpushom
gpullom
cd libraries/
ll
sudo chown -R aegir:aegir jquery.ui/
cd ..
..
..
ll
sudo -u aegir gst
sudo -u aegir git status
sudo -u aegir git pull origin master
ll .git
sudo chown -R aegir:aegir .git
sudo -u aegir git pull origin master
sudo chmod -R g+s .git
sudo chmod -R +s .git
sudo chmod -R u+s .git
sudo chmod -R u+s sites/
ll
cd .
cd ..
ll
sudo chown -R aegir:aegir hrpub-drupal-6.22-hr2-summercamp/
sudo chmod -R +s hrpub-drupal-6.22-hr2-summercamp/
sudo chmod -R u+s hrpub-drupal-6.22-hr2-summercamp/
sudo chown -R aegir:aegir hrpub-drupal-6.22
sudo chmod -R u+s hrpub-drupal-6.2
sudo chmod -R u+s hrpub-drupal-6.22
sudo chmod -R +s hrpub-drupal-6.22
cd ~
ll
vim .bashrc 
vim .bashrc 
history | grep reload
history | grep re
history | grep bash
source ~/.bashrc 
vim .bashrc 
vim .bashrc 
source ~/.bashrc 
ll
cd platforms/
ll
cd hrpub-drupal-6.22
cd sites/
ll
cd cstdac.uoregon.edu/
drush pm-update
vim ~/.bashrc 
vim ~/.bashrc 
vim ~/.bashrc 
source ~/.bashrc 
drush pm-update
ll themes/
cd themes/uowebzen/
ll
open --help
vim uowebzen.info 
gst
git status
git commit -am"fixing zen subtheme"
git push origin master
vim ~/.bashrc 
source ~/.bashrc 
drush pm-update
git status
git add .
git commit -am"updating zen"
git push origin master
alias
vim ~/.bashrc 
vim ~/.bashrc 
source ~/.bashrc 
gst
vim ~/.bashrc 
source ~/.bashrc 
gst
alias
sudo -u aegir ll
vim ~/.bashrc 
vim ~/.bashrc 
sudo -u aegir ll
source ~/.bashrc 
sudo -u aegir ll
sudo --help
man sudo 
vim ~/.bashrc 
source ~/.bashrc 
sudo -u aegir ll
man sudo 
man sudo | grep profile
man sudo | grep bashrc
man sudo | grep alias
ll
su aegir
vim ~/.bashrc 
source ~/.bashrc 
suaegir ll
vim ~/.bashrc 
alias
su aegir ll
suaegir ll
suaegir drush pm-update
drush pm-update
gst
vim ~/.bashrc 
ll ~
cat ~/.gitconfig
vim ~/.bashrc 
vim ~/.bashrc 
vim ~/.bash_aliases
vim ~/.bashrc 
source ~/.bashrc 
ll
vim ~/.bash_aliases
source ~/.bashrc 
gst
git add .
vim ~/.bash_aliases
alias git="echo '#git => agit' agit "
gst
alias git="echo '#git => agit'"."agit "
gst
alias git="echo \"#git => agit\""."agit "
gst
alias git="echo \"#git => agit\"":"agit "
gst
alias git="echo \"#git => agit\"";"agit "
alias git="echo \"#git => agit\":" "agit "
alias git="echo \"#git => agit\"" "agit "
alias git="echo \"#git => agit\""."agit "
gst
alias git="echo \"#git => agit\""|"agit "
alias git="echo \"#git => agit\" | agit "
gst
source ~/.bashrc 
gst
gst
alias git="echo \"#git => agit\"" agit \r
alias git="echo \"#git => agit\"" agit 
alias git="echo -n \"#git => agit\"; agit" 
gst
alias git="echo -n \"#git => agit \"; agit" 
gst
vim ~/.bash_aliases
source ~/.bashrc 
gst
vim ~/.bash_aliases
source ~/.bashrc 
gst
vim ~/.bash_aliases
vim ~/.bash_aliases
gst
source ~/.bashrc 
gst
ll
cd ../../../
..
..
cd makeFiles/
ll
cat fadev-drupal-622-1-13-2012.make 
ll
vim fadev-drupal-622-1-13-2012.make 
vim fadev-drupal-622-1-13-2012.make 
sudo vim fadev-drupal-622-1-13-2012.make 
cat fadev-drupal-622-1-13-2012.make 
cd ..
cd hrpub-drupal-6.22
cd sites/recruitoutreach.aaeo.uoregon.edu/themes/
ll
rm -R zen
sudo rm -R zen
y
y
y
y
alias
vim ~/.bash_aliases 
vim ~/.bash_aliases 
source ~/.bashrc 
ll
cd ..
gst
gci -am"commitng updates"
gpullom
gpushom
gpullom
ll
cd ..
ll
cd cstdac.uoregon.edu/
ll
gst
cd themes/
ll
rm -R zen/
source ~/.bashrc 
source ~/.bash_aliases 
rm -R zen/
alias
alias rm="rm"
rm -R zen/
sudo rm -R zen/
ll
..
gst
git add .
gci -am"delete duplicate theme and updated subtheme"
gpushom
gpullom
ll
ll
..
..
..
ll
ll hrpub-drupal-6.22/sites/all/modules/
cd hrdev-drupal-6.22-1132012/sites/all/modules/
ll
cd ..
cp modules/ ../../../hrpub-drupal-6.22/sites/all/
alias cp="cp"
cp modules/ ../../../hrpub-drupal-6.22/sites/all/
sudo cp modules/ ../../../hrpub-drupal-6.22/sites/all/
sudo rm -R ../../../hrpub-drupal-6.22/sites/all/modules/
sudo cp modules/ ../../../hrpub-drupal-6.22/sites/all/
sudo cp modules/ ../../../hrpub-drupal-6.22/sites/all/modules
sudo cp -R modules/ ../../../hrpub-drupal-6.22/sites/all
cd ../../../hrpub-drupal-6.22/sites/all
ll
ll modules/
cd ..
ll
cd all/
ll
sudo chown -R aegir modules/
ll modules/
..
ll
suaegir cp -R ../../hrdev-drupal-6.22-1132012/sites/all/themes/ all
 cp -R ../../hrdev-drupal-6.22-1132012/sites/all/themes/ all
ll all/
ll all/themes/
cp -R ../../hrdev-drupal-6.22-1132012/sites/all/libraries/ all
sudo chown aegir -R all/
ll all/themes/
ll all/
ll all/libraries/
cd recruitoutreach.aaeo.uoregon.edu/
gst
gci -am"updated mod"
gst
gpullom
gpushom
gpullom
ll modules/
pwd
ll
alias
cat .bash_aliases 
cd platforms/hrpub-drupal-6.22
gst
cd sites/cstdac.uoregon.edu/
gst
ll
gitl
gst
drush pm-update
cd
ll
cat .gitconfig 
cd /etc/httpd/conf.d/
ll
cat nocachepdf.conf 
   ExpiresByType application/pdf A300
cd 
cd platforms/
ll
cd openatrium-1.0/
ll
cd sites/
ll
cd .
..
..
ll
ll | grep atrium
cd fadev-openatrium-1.0_imported/
ll
cd sites/
ll
cd uodrupaldevs.fadev.uoregon.edu/
ll
ll modules/
cd modules/
ll
..
drush dl gmap
vim ~/.bash_aliases 
vim ~/.bash_aliases 
source ~/.bash_aliases 
cd 
ll
cat .bah
cat .bash_profile 
cat .bashrc 
ll
cd platforms/fadev-openatrium-1.0_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush pm-update
LL
ll
ll ~
cd ..
..
..
suaegir mkdir fadev-openatrium-1.2_imported
mkdir fadev-openatrium-1.2_imported
sudo mkdir fadev-openatrium-1.2_imported
ll
sudo mkdir fadev-openatrium-1.2_imported
alias
vim ~/.bash_aliases 
mkdir --help
mkdir fadev-openatrium-1.2_imported
source ~/.bash_aliases 
alias mkdir="mkdir"
mkdir fadev-openatrium-1.2_imported
sudo mkdir fadev-openatrium-1.2_imported
ll
sudo chown -R aegir:aegir fadev-openatrium-1.2_imported/
sudo chmod -R +s fadev-openatrium-1.2_imported/
cd fadev-openatrium-1.2_imported/
ll
gzip -dc http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-2.tgz | tar -x
wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-2.tgz
ll
sudo ll
sudo wget http://openatrium.com/sites/openatrium.com/files/atrium_releases/atrium-1-2.tgz
gzip -dc atrium-1-2.tgz | tar -x
sudo gzip -dc atrium-1-2.tgz | tar -x
ll
cd ..
sudo chown -R vid fadev-openatrium-1.2_imported/
cd fadev-openatrium-1.2_imported/
ll
gzip -dc atrium-1-2.tgz | tar -x
ll
rm atrium-1-2.tgz 
ll
cd atrium-1.2/
ll
mv . ..
ll
cd ..
ll
ll
..
ll
sudo chown -R aegir:aegir fadev-openatrium-1.2_imported/
ll
sudo chmod -R +s fadev-openatrium-1.2_imported/
ll
cd fadev-openatrium-1.2_imported/
ll
cd sites/uodrupaldevs.fadev.uoregon.edu/
ll
drush cc all
drush updatedb
drush dl location
drush updatedb
drush dl xmppframework
drush dl xmpp_user
drush dl privatemsg
drush dl taxonomy_super_select
pwd
gst
..
..
vim .gitignore
sudo vim .gitignore
sudo chown aegir:aegir .gitignore 
ll
git init
gst
sudo vim .gitignore
sudo vim .gitignore
gst
sudo rm -R .git
mv .gitignore sites/uodrupaldevs.fadev.uoregon.edu/
sudo mv .gitignore sites/uodrupaldevs.fadev.uoregon.edu/
alias mv=mv
sudo mv .gitignore sites/uodrupaldevs.fadev.uoregon.edu/
vim ~/.bashrc 
vim ~/.bash_aliases 
cd sites/uodrupaldevs.fadev.uoregon.edu/
ll
git init
git add .
gci -am"intial commit"
git remote add origin gitosis@fadev.uoregon.edu:fa_uodrupaldev.git
gpushom
gpushom
git remote -v
cd platforms/
ll'
ll
cd fadev-openatrium-1.2
cd fadev-openatrium-1.2_imported/
ll
gst
cd sites/uodrupaldevs.fadev.uoregon.edu/
gst
gpushom
..
..
..
rm -R fadev-openatrium-1.0_imported/
sudo rm -R fadev-openatrium-1.0_imported/
cd fadev-openatrium-1.2_imported/
cd sites/uodrupaldevs.fadev.uoregon.edu/
drush dl css_injector
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush dl editablefields
drush dl ajax_load
cd ..
..
..
ll
cd hrpub-drupal-6.22-hr2-summercamp/
ll sites/all/modules/
drush dl node_export
..
..
cd platforms/hrpub-drupal-6.22/sites/recruitoutreach.aaeo.uoregon.edu/
drush dl node_export
..
.
..
..
cd hrpub-drupal-6.22-h
cd hrpub-drupal-6.22-hr2-summercamp/
ll
ll sites/
cd sites/
ll all
ll mo
ll all/modul
ll all/modules/
ll
cd hr.uoregon.edu/
ll
ll modules/
ll files/
..
..
..
ll
cd hrpub-drupal-6.22-hr2-summercamp/sites/hr.uoregon.edu/files/
ll
cd ..
sudo chmod 774 files/
ll
sudo chmod -R -s files/
sudo chown -R aegir:aegir files/
sudo chmod -R 770 files/
find files/ -type d -exec sudo chmod u=rwx,g=rx,o=rx {} \;
ll files/
sudo chmod -R g+w files/
ll
..
ll
sudo chmod -s hr.uoregon.edu/
ll
cd hr.uoregon.edu/
ll
ll files/
ll files/
sudo chmod -R o+r files/
ll files/
ll ../../../faprod-drupal-6.22/sites/
ll ../../../faprod-drupal-6.22/sites/publicrecords
ll ../../../faprod-drupal-6.22/sites/safetyweb.uoregon.edu/
ll
ll ../../../faprod-drupal-6.22/sites/safetyweb.uoregon.edu/files/
ll
cd files/
ll
..
sudo chmod -R 664 files/
sudo chown -R aegir:apache files/
find files/ -type d -exec sudo chmod u=rwx,g=rx,o=rx {} \;
ll
drush dl nodereference_field
cd modules/
ll
rm -R feedback/
rm -R nodereference_field/
sudo rm -R nodereference_field/
ll
cd ..
..
..
drush dl nodereference_field
drush dl feedback
..
..
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush dl nodereference_field
ll ../../
ll ../../../hrpub-drupal-6.22-1132012/sites/recruitoutreach.aaeo.uoregon.edu/modules/
ll ../../../hrpub-drupal-6.22-1132012/sites/all/modules/
ll
top
apachectl -t
sudo apachectl -t
ll ../../../hrpub-drupal-6.22-1132012/sites/all/modules/
cd ../../../hrpub-drupal-6.22-1132012/sites/recruitoutreach.aaeo.uoregon.edu/modules/
ll
pwd
sudo rm -R advanced_help/
gst
sudo rm -R append_body_class_w_theme/
ll
gpullom
gst
git rm captcha/
sudo rm -R captcha/
sudo rm -R cck/
sudo rm -R ctools/
sudo rm -R customerror/
sudo rm -R date/
sudo rm -R devel/
sudo rm -R diff/
sudo rm -R drush/
sudo rm -R email/
sudo rm -R filefield
sudo rm -R google_analytics/
sudo rm -R ie_css_optimizer/
sudo rm -R imce/
sudo rm -R jquery_ui/
sudo rm -R link
sudo rm -R pathauto/
sudo rm -R shib_auth/
sudo rm -R token/
sudo rm -R webform
sudo rm -R wysiwyg/
sudo rm -R ../themes/zen/
gst
git add .
gci -am"updated module"
gpushom
gpullom
gpushom
..
..
cd cstdac.uoregon.edu/modules/
ll
gst
sudo rm -R devel/
sudo rm -R scanner/
sudo rm -R views/
sudo rm -R ../themes/zen/
gst
gci -am"cache update"
gst
sudo rm -R webform
gst
gpushom
gpullom
..
..
../
..
..
fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
gst
ll
cd fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
gst
git add .
gci -am"updates"
git remote -v
gpushom
ll
pwd
vim .gitignore 
sudo vim .gitignore 
gst
git add .
ll
ll private/
ll files/
ll
ll private/files/
ll private/temp/
ll libraries/
gci -am"un-ignoring modules"
gpushom
drush dl nodereference_autocreate
gci -am"new module"
git add .
gci -am"new module"
gpushom
cd ../../..
cd hrpub-drupal-6.22-1132012/sites/cstdac.uoregon.edu/
drush ccc
ll ../all/themes/
drush update-db
su aegir 
..
cd sit
cd cstdac.uoregon.edu/
ll
ccc
drush ccc
drush cc
sudo rm -R themes/zen/
drush cc
cd ../
cd recruitoutreach.aaeo.uoregon.edu/
drush cc
gst
ll
cd modules/
ll
gst
ll
pwd
ll ../../all/modules/
cat ../../all/modules/captcha/captcha.info 
psd
pwd
cd ../themes/
pwd
su aegir
sudo rm -R zen/
ll
cd ..
ll
drush cc
drush pm-update
cd platforms/
ll
cd hrpub-drupal-6.22-1132012/sites/recruitoutreach.aaeo.uoregon.edu/
ll modules/
ll ../all/modules/
cd modules/
sudo rm -R views
..
..
..
..
cd fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush dl drupalforfirebug
drush dl nodereference_formatters
gst
vim .gitignore 
sudo vim .gitignore 
gst
sudo vim .gitignore 
gst
GST
GST
gst
git add .
gci -am"new modules"
gpullom
gpushom
gpullom
drush dl panels
drush dl viewfield
cd platforms/hrpub-drupal-6.22-1132012/sites/recruitoutreach.aaeo.uoregon.edu/
..
..
drush pm-update
cd sites/
cd all/modules/
ll
drush dl captcha/
drush dl views
drush dl date/
drush dl webform
..
..
ll
cd recruitoutreach.aaeo.uoregon.edu/
ll
cd modules/
ll
drush dl recaptcha
drush cc
drush cc
pwd
drush dl webform
ll
drush cc
pwd
..
..
.
..
..
cd fadev-openatrium-1.2_imported/sites/u
cd fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush dl js_injector
gst
git add .
gci -am"additions"
gpushom
gpushom..
..
cd all/modules
ll
cd all
cd ../uodrupaldevs.fadev.uoregon.edu/
drush pm-update
drush dl wysiwyg
git add .
gci -am"new module"
gpushom
gpullom
ll
cd platforms/
ll
cd hrpub-drupal-6.22-1132012/sites/
ll
cd recruitoutreach.aaeo.uoregon.edu/
drush cc
..
drush cc
pwd
ll
cd recruitoutreach.aaeo.uoregon.edu/
gst
pwd
git add .
gci -am"updates"
gpullom
gpushom
gpullom
ll
ll modules/
git remote 0v
git remote -v
gst
git add .
gci -am"aegir updates"
gst
gpushom
ll
ll
ll files/
ll files/css/
ll
vim .gitignore 
git -ignore
cat ~/.gitconfig 
git ign
git ls-files -o -i --exclude-standard
ll
git add -R files/
git add files/
gst
gpullom
cd platforms/hrpub-drupal-6.22-1132012/
cd sites/recruitoutreach.aaeo.uoregon.edu/
ll
gst
gci -am"settings update by aegir"
gpullom
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush dl conditional_fields
cd platforms/hrpub-drupal-6.22-1132012/sites/recruitoutreach.aaeo.uoregon.edu/
gst
gci -am"aegir settings update"
gpullom
gpushom
drush dl fivestar
drush dl fivestarextra
drush dl votingapi
drush dl auto_nodetitle
cd modules/
ll
cd ..
cd cstdac.uoregon.edu/
ll modules/
drush dl elementdefaults
pwd
drush dl computed_field
gst
ll
..
gpullom
ll
cat .bashrc 
cat .bashrc 
cat .bash_aliases 
cd platforms/
cd hrpub-drupal-6.22-1132012/
l
ll
..
ll
cd hrpub-drupal-6.22-hr2-summercamp/
ll
..
ll
sudo chmod -R u-s fadev-openatrium-1.2_imported/
sudo chmod -R u-s hrpub-drupal-6.22-hr2-summercamp/
ll
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush dl views_customfield
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush dl plus1
cd platforms/
ll
ll makeFiles/
cd hrpub-drupal-710/sites/all/libraries/
ll
..
..
..
..
ll
mkdir hrstg-drupal-7.10
sudo mkdir hrstg-drupal-7.10
ll
sudo chown -R aegir:aegir hrstg-drupal-7.10/
drush dl drupal-7.10
ll
mv hrstg-drupal-7.10/ hrstg-drupal-7.10old
sudo mv hrstg-drupal-7.10/ hrstg-drupal-7.10old
mv drupal-7.10/ hrstg-drupal-7.10/
sudo 
sudo sudo 
sudo mv drupal-7.10/ hrstg-drupal-7.10/
ll
sudo rm -R hrstg-drupal-7.10
sudo rm -R hrstg-drupal-7.10old/
drush dl drupal-7.10
mv drupal-7.10/ hrstg-drupal-7.10/
sudo mv drupal-7.10/ hrstg-drupal-7.10/
ll
cd hrstg-drupal-7.10/
ll
cp ../hrpub-drupal-710/sites/all/modules/ctools/ sites/all/modules/
cp -R ../hrpub-drupal-710/sites/all/modules/ctools/ sites/all/modules/
sudo cp -R ../hrpub-drupal-710/sites/all/modules/ctools/ sites/all/modules/
sudo cp -R ../hrpub-drupal-710/sites/all/modules/shib_auth/ sites/all/modules/
sudo cp -R ../hrpub-drupal-710/sites/all/modules/uobanner/ sites/all/modules/
cd sites/all/modules/
ll
cd ..
sudo chown -R aegir:aegir modules/
ll modules/
..
..
sudo cp -R ../hrpub-drupal-710/sites/all/modules/* sites/all/modules/
ll sites/all/modules/
cd sites/all/
sudo chown -R aegir:aegir modules/
ll modules/
..
..
..
cp -R hrstg-drupal-7.10 hrdev-drupal-7.10
sudo cp -R hrstg-drupal-7.10 hrdev-drupal-7.10
ll hrdev-drupal-7.10/
sudo chown aegir:aegir hrdev-drupal-7.10/
sudo chown -R aegir:aegir hrdev-drupal-7.10/
ll hrdev-drupal-7.10/
cd hrdev-drupal-7.10/
sudo cp -R ../hrpub-drupal-710/sites/all/modules/* sites/all/modules/
cd ..; sudo chown aegir:aegir hrdev-drupal-7.10/
ll hrdev-drupal-7.10/
ll hrdev-drupal-7.10/sites/all/modules/
cd hrdev-drupal-7.10/
cd sites/all
ll themes/
..
ll olum.hrdev.uoregon.edu/themes/
top
df
dfdf
df
df
cd platforms/
ll
ll hrpub-drupal-710/sites/all/themes/
ll hrdev-drupal-7.10/sites/all/themes/
cd hrdev-drupal-7.10/
sudo cp -R ../hrpub-drupal-710/sites/all/themes/* sites/all/themes/
cd sites/olum.hrdev.uoregon.edu/
drush cc
..
..
..
ll fastage-drupal-710/sites/all/themes/
cd fastage-drupal-710/sites/olum.fastage.uoregon.edu/
drush cc
drush pm-update
drush
drush cron
..
..
..
cd hrpub-drupal-6.22
ll sites/
cd ..
ll
sudo rm -R hrpub-drupal-6.22
ll hrpub-drupal-7.8/sites/
ll hrpub-drupal-7.9x/sites/
sudo rm -R hrpub-drupal-7.8
sudo rm -R hrpub-drupal-7.9x/
ll
cd hrpub-drupal-6.22-1132012/sites/recruitoutreach.aaeo.uoregon.edu/
gst
git add .
gci -am"adding theme"
gpullom
gpushom
gpullom
gpullom
gpullom
gpullom
gpullom
gpullom
gpullom
cd themes/
ll
gpullom
cd platforms/hrpub-drupal-710/sites/olum.uoregon.edu/
gst
vim .gitignore
sudo vim .gitignore
sudo vim .gitignore
gst
git add .
gci -am"updates from aegir and drush plus new gitignore lines"
gpullom
git diff .gitignore 
sudo vim .gitignore
gci -am"updating .gitignore"
gpullom
gpushom
gpullom
ll
cd themes/
ll
cd UO_Bartik/
ll
cd images/
ll
open bg_interior.png 
cat ~/.bashrc 
pwd
gpullom
gpullom
gpullom
gpullom
pwd
gpullom
gst
gci -am"committing some wonky changes from a failed merge"
gpullom
gpushom
gpullom
gpullom
gpullom
gpushom
gpullom
GST
gst
ll
gci -am"change commit conflicts..."
gpullom
gpullom
gpullom
cd /var/www/html/
ll
cd ac/
ll
gst
gci -am"system changes""
gci -am"system changes"
git add .
gci -am"adding new files from the system"
git remote -v
cd /var/www/html/ac
gst
gpullom
gpushom
ll
alias
l.
lk
lu
ll
lt
ls --help
cat index.php 
cat public/index.php 
pwd
ll
..
ll
cd
ll
cd platforms/
ll
cd /var/
ll
cd /
ll
cd var/www/
ll
cd html/
ll
cd 
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush pm-update
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
drush dl node_convert
cd platforms/hrdev-drupal-7.10/
cd sites/
ll the
ll all/themes/
ll all/modules/
..
..
cd makeFiles/
ll
cp fadev-drupal-710.make fadev-drupal-712.make 
sudo cp fadev-drupal-710.make fadev-drupal-712.make 
vim fadev-drupal-712.make 
vim fadev-drupal-712.make 
sudo vim fadev-drupal-712.make 
..
sudo mkdir hrdev-drupal-712/
sudo chown -R aegir:aegir hrdev-drupal-712
ll
mv hrdev-drupal-712 hrdev-drupal-7.12
sudo mv hrdev-drupal-712 hrdev-drupal-7.12
ll
cd hrdev-drupal-712
cd hrdev-drupal-7.12
ll
cd 
...
cd platforms/
drush dl drupal-7.12
ll
rm hrdev-drupal-7.12
rm -R  hrdev-drupal-7.12
sudo rm -R  hrdev-drupal-7.12
sudo mv drupal-7.12 hrdev-drupal-7.12
ll
sudo chown -R aegir:aegir hrdev-drupal-7.12
ll
cd hrdev-drupal-7.12/sites/all
ll themes/
ll modules/
cd /
ll
cd var/aegir/backups/
ll var/aegir/backups/
sudo ll var/aegir/backups/
sudo ls -al var/aegir/backups/
sudo ls -al var/aegir/backups/ | grep imported
sudo ls -al var/aegir/backups/ | grep atrium
sudo ls -al var/aegir/backups/ | grep uow
sudo ls -al var/aegir/backups/ | grep uod
cd /
ll
gzip -dc /var/remote.bexec/fadev_filebak/fadev_2012-02-05_23h00m.tgz | tar -x
sudo gzip -dc /var/remote.bexec/fadev_filebak/fadev_2012-02-05_23h00m.tgz | tar -x
sudo gzip -dc /var/remote.bexec/fadev_filebak/fadev_2012-02-05_23h00m.tgz | tar -xll
ll
/var/remote.bexec/fadev_filebak
cd /var/remote.bexec/fadev_filebak
ll
sudo gzip -dc fadev_filebak/fadev_2012-02-05_23h00m.tgz | tar -x
sudo gzip -dc fadev_filebak/fadev_2012-02-05_23h00m.tgz
sudo gzip -dc fadev_2012-02-05_23h00m.tgz | tar -x
sudo gzip -dc fadev_2012-02-05_23h00m.tgz
ll
gzip --help
sudo gzip -d fadev_2012-02-05_23h00m.tgz
ll
sudo gzip -dc fadev_2012-02-05_23h00m.tgz | tar -x
ll
df
sudo cp fadev_2012-02-05_23h00m.tgz ~
ll
pwd
cd /var/aegir/platforms/makeFiles/fadev-drupal-712.make
cat /var/aegir/platforms/makeFiles/fadev-drupal-712.make
cd /var/aegir/platforms/makeFiles/
ll
git remote -v
git add .
gci -am"adding current makefiles"
gpullom
gpushom
vim fadev-drupal-712
sudo vim fadev-drupal-712.make 
gci -am"fixed typo"
gpushom
gpullom
ll
..
cd fadev-drupal-7.12
ll
cd hrdev-drupal-7.12
ll
cd sites/
cd aaeo.hrdev.uoregon.edu/
ll
..
..
vim .htaccess 
vim .htaccess 
..
cd makeFiles/
cd patches/
ll
pwd
gpullom
cd platforms/
cd fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/modules/custom/
gst
..
..
gst
git add .
gci -am"system updates"
gpullom
gpushom
gpullom
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu
gst
git add . new files and module
gst
git add .
gci -am"new files and module"
gpullom
gpushom
gpullom
gpullom
ll
cd _assets/
ll
tar ..
..
gpullom
gpullom
drush dl beautytips
git add .
gci -am"adding module"
gpushom
..
..
..
..
cd /var/aegir/
ll
cd clients/
ll
sudo ls
sudo ls vid
cd vid
ll
..
..
ll
..
ll
cd www
ll
cd html/
ll
.
..
..
cd aegir/
ll
ll hostmaster-6.x-1.
ll hostmaster-6.x-1.6
cd
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
ll
cd modules/
ll
cd custom/
ll
cd form_display_node_type/
ll
vim form_display_node_type.module 
vim form_display_node_type.module 
vim form_display_node_type.module 
vim form_display_node_type.module 
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
gst
vim modules/custom/form_display_node_type/form_display_node_type.module 
..
..
..
cd fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
gci -am"updated module"
gpushom
cd platforms/hrpub-drupal-6.22-
cd platforms/
ll
cd hrpub-drupal-6.22-hr2-summercamp/sites/hr.uoregon.edu/files/imports
ll
..
ll
sudo chmod 777 imports/
..
..
..
..
ll
cd hrpub-drupal-6.23-hr2-summercamp/
ll
cat .htaccess 
..
..
cd platforms/mk
cd platforms/makeFiles/
ll
vim fadev-drupal-623-with-shib.make 
ll
cat atrium_stub.make 
vim fadev-drupal-623-with-shib.make 
vim fadev-drupal-623-with-shib.make 
vim fadev-drupal-623-with-shib.make 
cd patches/t
cd patches/
ll
cat htaccessShibboleth.patch 
..
ll
vim fadev-drupal-623-with-shib.make 
cat atrium_stub.make 
cd platforms/
cd makeFiles/
ll
cat atrium_stub.make 
vim fadev-drupal-623-with-shib.make 
vim fadev-drupal-623-with-shib.make 
sudo vim fadev-drupal-623-with-shib.make 
cat atrium_stub.make 
sudo vim fadev-drupal-623-with-shib.make 
cd platforms/makeFiles/
ll
gst
gci -am"trying new patch git syntax"
gpushom
gpullom
cd platforms/makeFiles/
gpullom
sudo apachectl -t
..
cd hrpub-drupal-6.23-hr2-summercamp/
cat .htaccess 
cd platforms/
cd makeFiles/
ll
cat fadev-drupal-623-with-shib.make 
open fadev-drupal-623-with-shib.mak
open fadev-drupal-623-with-shib.make
vim fadev-drupal-623-with-shib.make
sudo vim fadev-drupal-623-with-shib.make
gci -am"cleaned out commetns"
history | grep ammend
history | grep amend
gci -m --ammend
gci --ammend
gci --amend
gpushom
cd platforms/hrpub-drupal-6.22-hr2-summercamp/sites/all/modules/
ll
ll ../../../../hrpub-drupal-623-h
ll ../../../../
ll ../../../../hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
ll ../../../../hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
ll
sudo cp -R * ../../../../hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
ll ../../../../hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
sudo chown -R aegir:aegir ../../../../hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
ll ../../../../hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
drush
drush pm-list
ll ../../../../hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
cd ../../hr.uoregon.edu/
drush pm-list
drush pm-info
drush
drush make-generate
drush help make-generate
drush make-generate hrdev-drupal-6.23-hr2-summercamp
ll
cd 
cd platforms/makeFiles/
ll
gpullom
ll
gst
cd /etc/
cat php.ini
ll php.d/
cd
cd platforms/hrdev-drupal-7.1
ll
cd platforms/
ll
cd hrdev-drupal-7.12/sites/
ll
cd all/libraries/dompdf/lib/fonts
ll
..
ll
sudo chmod g+ws fonts/
ll
sudo chmod g+x fonts/
ll
sudo chmod g-s fonts/
ll
sudo chmod o+w fonts/
ll
cd ../../../
cd ../../
..
cd makeFiles/
gst
gpullom
ll
ll .git/
sudo chown -R aegir:aegir .git/
gpullom
gst
history
history | grep drush dl
history | grep drush dl
history | grep dl
gpullom
ll /etc/httpd/
ll /etc/httpd/conf.d/
cat /etc/httpd/conf.d/php.conf 
ll /etc/httpd/conf
cat /etc/httpd/conf/httpd.conf
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
ll
cd files/
ll
cat .htaccess 
exit
cd platforms/fadev-openatrium-1.2_imported/sites/uodrupaldevs.fadev.uoregon.edu/
cd files/
ll
cp hrdev-drupal-712-base.make hrdev-drupal-712-base
ll
sudo chown apache:apache hrdev-drupal-712-base
ll
cp hrdev-drupal-712-base-plus-shib.make hrdev-drupal-712-base-plus-shib
sudo chown apache:apache hrdev-drupal-712-base-plus-shib
ll
rm hrdev-drupal-712-base
rm hrdev-drupal-712-base-plus-shib
..
drush dl attachement_links
drush dl attachment_links
drush
drush pm-enable attachment_links
drush updb
drush cc
cd /
ll
cd var/
ll
cd /
 ls -al /home/gitosis/repositories
ll
cd 
cd platforms/hrpub-drupal-6.22-hr2-summercamp/
git remote -v
cd files/images/temp
cd sites/hr.uoregon.edu/files/images/temp
ll
..
ll
sudo chmoe 777 temp/
sudo chmod 777 temp/
ll
..
..
cat local.settings.php
gpullom
cd local.settings.php 
ll
sudo chmod g-s local.settings.php 
ll
sudo chmod g+s local.settings.php 
ll
sudo chmod g-s local.settings.php 
ll
gpullom
ll
sudo chmod o-r local.settings.php 
ll
sudo chmod g+s local.settings.php 
ll
gpullom
gst
..
gst
git add .
gci -am"latest changes"
gpushom
drush
ll
cd hr.uoregon.edu/
ll
cat local.settings.php 
ll
sudo chmod 664 local.settings.php 
ll
sudo apachectl -t
cd platforms/
cd hrdev-drupal-7.12/
vim .htaccess 
cd platforms/
ll
drush dl drupal-6.24
ll
cd drupal-6.24/
ll
ll profiles/
ll profiles/default/
rm -R profiles/
sudo rm -R profiles/
ll sites/
sudo rm -R sites/
..
cd fadev-openatrium-1.2_imported/
drush pm-update
cd ..
cd drupal-6.24/
ll
sudo cp -R * ../fadev-openatrium-1.2_imported/
..
cd fadev-openatrium-1.2_imported/
ll
../drupal-6.24/
cp --help
 alias
ll
sudo rm -R xmlrpc.php UPGRADE.txt update.php themes/ scripts/ robots.txt PATCHES.txt modules/ misc/ MAINTAINERS.txt LICENSE.txt INSTALL.txt install.php INSTALL.pgsql.txt INSTALL.mysql.txt index.php includes/ .htaccess cron.php COPYRIGHT.txt CHANGELOG.txt 
ll
cd ../drupal-6.24/
ll
sudo cp -R * ../fadev-openatrium-1.2_imported/
cd ../fadev-openatrium-1.2_imported/
ll
..
sudo chown -R aegir:aegir fadev-openatrium-1.2_imported/
cd fadev-openatrium-1.2_imported/
ll
sudo apachectl -t
cat /var/aegir/platforms/fadev-openatrium-1.2_imported/.htaccess
ll /var/aegir/platforms/fadev-openatrium-1.2_imported/
..
cd drupal-6.24/
ll
cp .htaccess ../fadev-openatrium-1.2_imported/
sudo cp .htaccess ../fadev-openatrium-1.2_imported/
cd ../fadev-openatrium-1.2_imported/
ll
sudo apachectl -t
cd sites/all/modules/
ll
mv -R imce/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
mv -r imce/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
mv imce/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
sudo mv imce/ ../../uodrupaldevs.fadev.uoregon.edu/modules/
ll
cd ../../uodrupaldevs.fadev.uoregon.edu/modules/
ll
..
..
ll
..
..
ll
sudo rm -R drupal-6.24/
ll
su aegir 
cd fastage-openatrium-1.2_dl/sites/
ll
sudo rm -R uodrupaldevs.fadev.uoregon.edu/
ll
..
..
ll
mv fastage-openatrium-1.2_dl/ fastage-openatrium-1.2-dl-drupal-6.24/
sudo mv fastage-openatrium-1.2_dl/ fastage-openatrium-1.2-dl-drupal-6.24/
ll
ll fastage-openatrium-1.2-dl-drupal-6.24/
cd fastage-openatrium-1.2-dl-drupal-6.24/
ll
sudo apachectl -t
sudo apachectl -k graceful
cat /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/.htaccess
cd ../fadev-openatrium-1.2_imported/
cd sites/uodrupaldevs.fadev.uoregon.edu/
drush cc
ll
..
ll
..
..
ll
cd fadev-openatrium-1.2_imported/
mv .htaccess htaccess_old
sudo mv .htaccess htaccess_old
sudo vim .htaccess
ll
sudo aegir:aegir .htaccess 
sudo chown aegir:aegir .htaccess 
sudo chown aegir:aegir htaccess_old 
ll
drush
cd sites/uodrupaldevs.fadev.uoregon.edu/
.
..
..
..
cd fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/
drush dl nodeaccess_userreference
drush pm-enable nodeaccess_userreference
drush dbup
drush updb
cd platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/
drush dl pathologic
gst
git add .
gci -am"updated files and added new module"
gpullom
gpushom
gpullom
gpullom
gpullom
gst
git diff
gci -am"aegir updates"
gpullom
gpushom
php /var/aegir/drush/drush.php @hostmaster hosting-cron --debug
drush @hostmaster hosting-cron --debug
gpullom
drush @hostmaster hosting-cron
gpullom
drush @hostmaster hosting-cron
gpullom
drush @hostmaster hosting-cron
gpullom
gpullom
gst
cd platforms/
ll
cd fadev-drupal-7.12/
cd sites/
ll
..
..
ll fadev-drupal-6.23/sites/
cd fadev-drupal-7.12/sites/statfaculty.fadev.uoregon.edu/themes/
ll
ll statfaculty/
cd statfaculty/css/
ll
git whatchanged
ll
git logv
cat ~/.gitconfig
git logv
cat ~/.gitconfig
git 
# Show files ignored by git:
  ign = ls-files -o -i --exclude-standard[vid@fadev css]$ git logv
#git => agit #agit => suaegir git #suaegir => sudo -u aegir
git: 'logv' is not a git command. See 'git --help'.
cd platforms/hrpub-drupal-6.22-hr2-summercamp/sites/hr.uoregon.edu/themes/
ll
..
..
cd them
cd all/themes/
ll
cd hr2newsflash/
open user_style_hr.css 
vim user_style_hr.css 
gst
..
..
..
..
gci -am"updates and settings"
git add .
gci -am"new content"
gpullom
gpushom
gpullom
drush
drush help provision-verify
drush sa
drush @hr.uoregon.edu provision-verify
cd platforms/hrpub-drupal-6.22-hr2-summercamp/sites/hr.uoregon.edu/
gst
gci -am"aegir settings"
gpullom
git add .
gci -am"adding sitedoc"
gpushom
cd platforms/
pwd
cd hrpub-drupal-6.23-hr2-summercamp/
ll sites/
..
cd hrpub-drupal-6.22-hr2-summercamp/
cd sites/hr.uoregon.edu/
drush dl css_injector
drush dl captcha
cd modules/
ll
mv captcha/ ../../all/modules/
sudo mv captcha/ ../../all/modules/
sudo mv css_injector/ ../../all/modules/
ll
cd ../../all/modules/
ll
drush cc
drush
drush --version
cd ../../hr.uoregon.edu/
drush cc
cd ../all/modules/
drush dl pathologic
cd platforms/
ll
ll hrpub-drupal-6.22-hr2-summercamp/ hrpub-drupal-6.23-hr2-summercamp/
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/modules/ hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/modules/captcha hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
sudo cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/modules/captcha hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
sudo cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/modules/css_injector/ hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
sudo cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/modules/pathologic/ hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/modules/ hrpub-drupal-6.23-hr2-summercamp/sites/all/modules/
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/themes/ hrpub-drupal-6.23-hr2-summercamp/sites/all/themes/
sudo cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/themes/* hrpub-drupal-6.23-hr2-summercamp/sites/all/themes/
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/themes/ hrpub-drupal-6.23-hr2-summercamp/sites/all/themes/
ll hrpub-drupal-6.22-hr2-summercamp/sites/all hrpub-drupal-6.23-hr2-summercamp/sites/all
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/libraries/ hrpub-drupal-6.23-hr2-summercamp/sites/all/libraries/
sudo cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/libraries/* hrpub-drupal-6.23-hr2-summercamp/sites/all/libraries/
ll
cd platforms/
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/libraries/ hrpub-drupal-6.23-hr2-summercamp/sites/all/libraries/
sudo cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/libraries/* hrpub-drupal-6.23-hr2-summercamp/sites/all/libraries/
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/libraries/ hrpub-drupal-6.23-hr2-summercamp/sites/all/libraries/
ll hrpub-drupal-6.22-hr2-summercamp/sites/all hrpub-drupal-6.23-hr2-summercamp/sites/all
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/files/ hrpub-drupal-6.23-hr2-summercamp/sites/all
sudo cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/files hrpub-drupal-6.23-hr2-summercamp/sites/all
ll hrpub-drupal-6.22-hr2-summercamp/sites/all/files/ hrpub-drupal-6.23-hr2-summercamp/sites/all
ll hrpub-drupal-6.22-hr2-summercamp/sites/all hrpub-drupal-6.23-hr2-summercamp/sites/all
sudo cp -R hrpub-drupal-6.22-hr2-summercamp/sites/all/plugins/ hrpub-drupal-6.23-hr2-summercamp/sites/all
ll hrpub-drupal-6.22-hr2-summercamp/sites/all hrpub-drupal-6.23-hr2-summercamp/sites/all
sudo ls -al /var/aegir/config/server_hrpublicuoregonedu/ssl.d/olum.uoregon.edu/
sudo ls -al /var/aegir/config/server_hrpublicuoregonedu/ssl.d/hr.uoregon.edu
sudo cp -R /var/aegir/config/server_hrpublicuoregonedu/ssl.d/olum.uoregon.edu/* /var/aegir/config/server_hrpublicuoregonedu/ssl.d/hr.uoregon.edu/
cdl /var/aegir/config/server_hrpublicuoregonedu/ssl.d/hr.uoregon.edu
cd /var/aegir/config/server_hrpublicuoregonedu/ssl.d/hr.uoregon.edu
su aegir
cd platforms/
ll
ll makeFiles/
cd hrpub-drupal-6.23-hr2-summercamp/
cd sites/hr.uoregon.edu/
..
cd hr.uoregon.edu/
drush
drush pm-list
drush pm-update
..
cd all/modules/
drush dl views_bulk_operations-6.x-1.13 faq-6.x-1.13 linkchecker-6.x-2.5
..
..
cd hr.uoregon.edu/
drush cc
..
cd summercamps.uoregon.edu/
drush cc
drush up
.
..
cd all//modules/
drush dl clientside_validation-6.x-1.27
..
..
cd summercamps.uoregon.edu/
drush cc
history | grep make
drush make-generate hrdev-drupal-6.23-hr2-summercamp.make-inprogress2
ll
..
ll
..
ll
mv hrdev-drupal-6.23-hr2-summercamp.make-inprogress2 ../makeFiles/
sudo mv hrdev-drupal-6.23-hr2-summercamp.make-inprogress2 ../makeFiles/
cd ../makeFiles/
ll
gst
git add .
gci -am"adding new test make file"
gst
ll
gpushom
gpullom
ll
..
cd hrpub-drupal-6.23-hr2-summercamp/sites/hr.uoregon.edu/
drush pm-list
cd platforms/
ll
cd platforms/
cd hrdev-drupal-6.22-hr2-summercamp/sites/hr4.hrdev.uoregon.edu/modules/
drush dl node_convert, strongarm, viewfield, views_content
drush dl views_content, ctools
drush dl views_customfield
ll
open locations/locations.info 
vim locations/locations.info 
vim locations/locations.info 
vim locations/locations.info 
vim locations/locations.info 
gst
ll
locations/
cd locations/
git init
git add .
gci -am"initial commit on new module"
git remote add origin gitosis@fadev.uoregon.edu:hr_module_locations.git
gpushom
cd platforms/
..
cd platforms/fadev-openatrium-1.2_imported/sites/
ll
..
..
cd fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/
gst
git add .
gci -am"adding files and modules"
gpullom
gpushom
gpullom
cd platforms/makeFiles/
ll
gst
gpullom
gpushom
gpullom
..
ll
cd hrpub-drupal-6.23
cd sites/
ll all/modules/
cd recruitoutreach.aaeo.uoregon.edu/modules/
ll
drush pm-update
drush pm-update --no-core
y
drush pm-update
..
..
cd cstdac.uoregon.edu/
drush pm-update
drush 
drush pm-update -help
drush -help pm-update
drush help pm-update
..
cd recruitoutreach.aaeo.uoregon.edu/
drush pm-update
..
cd cstdac.uoregon.edu/
drush pm-update
cd platforms/hrpub-drupal-6.23-hr2-summercamp/sites/hr.uoregon.edu/
gst
ll
pwd
..
ll
..
ll
history | grep .git
history | grep -B2 rm .git
history | grep -B2 rm .git
history | grep -B2 "rm .git"
history | grep -B2 rm\ .git
history | grep -B2 rm\ -R.git
history | grep -B2 rm\ -R\ .git
history | grep -B6 rm\ -R\ .git
history | grep backu
history | grep exec
cd /var/remote.bexec/fadev_filebak
ll
ll
ll /var/aegir/platforms/hrpub-drupal-6.23-hr2-summercamp/
pwd
tar -zxvf fadev_2012-03-08_23h00m.tgz /var/aegir/platforms/hrpub-drupal-6.23-hr2-summercamp/.git
cd /var/aegir/platforms/hrpub-drupal-6.23-hr2-summercamp/
tar -zxvf /var/remote.bexec/fadev_filebak/fadev_2012-03-08_23h00m.tgz /var/aegir/platforms/hrpub-drupal-6.23-hr2-summercamp/.gitignore
ll
gst
ll
cat .gitconfig 
ll
cd drush-backups/
ll
cd drush/
ll
cd 20110822213717/
ll
cd drush/
ll
cd
cd drupal_backup/
ll
..
tar -zxvf /var/remote.bexec/fadev_filebak/fadev_2012-03-07_23h00m.tgz /var/aegir/platforms/hrpub-drupal-6.23-hr2-summercamp/.gitignore
ll
rm fadev_2012-02-05_23h00m.tgz 
ll
cd platforms/hrpub-drupal-6.23-hr2-summercamp/sites
ll
cd hr.uoregon.edu/
ll
..
..
ll
sudo chown -R aegir:aegir .git .gitignore
ll
gst\
gst
ll
ll sites/hr.uoregon.edu/
ll sites/hr.uoregon.edu/_assets/
..
cd hrpub-drupal-6.22-hr2-summercamp/
ll
gst
..
cd hrpub-drupal-6.23-hr2-summercamp
gst
..
cd hrpub-drupal-6.22-hr2-summercamp/
cd sites/default/
ll
sudo chown -R aegir:aegir files/
mv files/ ../../../hrpub-drupal-6.23-hr2-summercamp/sites/default/
sudo mv files/ ../../../hrpub-drupal-6.23-hr2-summercamp/sites/default/
cd ../../../hrpub-drupal-6.23-hr2-summercamp/sites/default/
ll
..
..
gst
gst
gci -am"update changes"
git add .
gst
gci -am"new modules"
gpullom
gpushom
gci -am"adding icon back"
gst
cat .htaccess 
gci -am".htaccess"
gpushom
cd platforms/hrdev-drupal-6.22-1132012/sites/odt-test.hrdev.uoregon.edu/
drush dl taxonomy_csv
drush pm-enable taxonomy_csv
drush pmup
drush pm-update
drush pm-enable update
drush pm-update
drush dl taxonomy_csv
drush pm-enable taxonomy_csv
drush updb
ll
vim local-settings.php
sudo vim local-settings.php
mv local-settings.php local.settings.php 
sudo mv local-settings.php local.settings.php 
sudo vim local.settings.php
sudo vim local.settings.php
sudo vim local.settings.php
sudo vim local.settings.php
sudo vim local.settings.php
sudo vim local.settings.php
sudo vim local.settings.php
top
sudo vim local.settings.php
sudo vim local.settings.php
drush cc
cd html/ac/
gst
git add .
gci -am"system changes"
ll
sudo chown apache:apache api.php .gitignore index.php 
sudo chown -R apache:apache .git
gci -am"system changes"
gpullom
ll public/assets/javascript/tinymce/tiny_mce_init.js 
sudo chmod g+w public/assets/javascript/tinymce/tiny_mce_init.js 
gpullom
gci -am"commiting half fetched changed"
gpullom
git add .
gci -am"commiting half fetched changes"
gpullom
sudo chmod u+x public/assets/javascript/tinymce/tiny_mce_init.js 
gpullom
gci -am"commiting half fetched changes"
gpullom
gpullom
gpushom
gpullom
gci -am"commiting mode change"
gpullom
vim public/assets/javascript/tinymce/tiny_mce_init.js 
gst
gci -am"conflict"
gst
gpullom
gpushom
gpushom
gpullom
ll public/assets/javascript/tinymce/tiny_mce_init.js 
chmod g+x public/assets/javascript/tinymce/tiny_mce_init.js 
sudo chmod g+x public/assets/javascript/tinymce/tiny_mce_init.js 
ll public/assets/javascript/tinymce/tiny_mce_init.js 
gci -am"mode change"
gpullom
vim ~/.bash_aliases 
alias git="git"
gpullom
exit
cd html/ac/
gst
gci -am"system cache update"
gpullom
ll public/assets/javascript/tinymce/tiny_mce_init.js 
groups
chmod 777 public/assets/javascript/tinymce/tiny_mce_init.js 
sudo chmod 777 public/assets/javascript/tinymce/tiny_mce_init.js 
gst
vim ~/.bash_aliases 
source ~/.bash_aliases 
noAegir
vim ~/.bash_aliases 
source ~/.bash_aliases 
noAegir

"
vim ~/.bash_aliases 
source ~/.bash_aliases 
noAegir
vim ~/.bash_aliases 
source ~/.bash_aliases 
noAegir
vim ~/.bash_aliases 
noAegir
source ~/.bash_aliases 
noAegir
alias git="git"
gst
gci -am"system cache update"
gpullom
ll public/assets/javascript/tinymce/tiny_mce_init.js 
ll public/assets/javascript/tinymce/
ll public/assets/javascript/
sudo chmod g+w public/assets/javascript/tinymce
ll public/assets/javascript/
gpullom
gpullom
gpullom
gci -am"cache changes"
gpullom
gpullom
gst
git rm --cached cache/*
git add cache/cch_acx_users_id_23.php 
gst
gci -am"commiting changes from failed pull"
gst
gpullom
gpushom
gpullom
gci -am"cache changes"
gpullom
git rm -r --cached cache/cch_acx_users_id_23.php
gst
gci -am"deleting more cached files"
gpullom
gpushom
cd platforms/hrdev-drupal-6.22-1132012/
ll sites/
cd sites/odt-test.hrdev.uoregon.edu/
drush cc
drush pm-update
ll
vim local.settings.php 
sudo vim local.settings.php 
ll
sudo chown aegir:aegir local.settings.php
ll
top
drush dl taxonomy_manager
ll
..
..
..
cd fadev-drupal-6.25/sites/odt-test.fadev.uoregon.edu/
drush dl taxonomy_manager
drush pm-enable taxonomy_manager
drush pmup --no-cache
drush pm-update --no-cache
drush updb
top
cd platforms/hrpub-drupal-6.23-hr2-summercamp/
ll sites/all/modules/
ll sites/summercamps.uoregon.edu/modules/
drush dl advagg
drush pm-disable css_gzip
drush pm-enable advagg
cd sites/summercamps.uoregon.edu/
drush pm-enable advagg
../
..
cd hr.uoregon.edu/
drush pm-disable css_gzip
drush pm-enable advagg
..
..
drush pm-update --no-core
cd sites/hr.uoregon.edu/
drush pm-update --no-core
ll ~
drush pm-update --no-core
..
..
..
mkdir hrpub-drupal-6.25-hr2-summercamp/
sudo mkdir hrpub-drupal-6.25-hr2-summercamp/
hrpub-drupal-6.25-hr2-summercamp/
drush dl drupal-6.25
cd hrpub-drupal-6.23-hr2-summercamp/
ll
cp v_includes/ ../hrpub-drupal-6.25-hr2-summercamp/
cp -R v_includes/ ../hrpub-drupal-6.25-hr2-summercamp/
sudo cp -R v_includes/ ../hrpub-drupal-6.25-hr2-summercamp/
sudo cp -R .htaccess ../hrpub-drupal-6.25-hr2-summercamp/
sudo cp -R favicon.ico ../hrpub-drupal-6.25-hr2-summercamp/
sudo cp -R .git ../hrpub-drupal-6.25-hr2-summercamp/
sudo cp -R .gitignore ../hrpub-drupal-6.25-hr2-summercamp/
ll temp/
sudo cp -R temp ../hrpub-drupal-6.25-hr2-summercamp/
ll sites/
ll sites/default/
ll sites/default/files/
sudo cp -R sites/default/files/ ../hrpub-drupal-6.25-hr2-summercamp/sites/default
sudo mkdir ../hrpub-drupal-6.25-hr2-summercamp/sites/default
ll ../hrpub-drupal-6.25-hr2-summercamp/sites
ll ../hrpub-drupal-6.25-hr2-summercamp
..
ll
mv drupal-6.25/* hrpub-drupal-6.25-hr2-summercamp/
sudo mv drupal-6.25/* hrpub-drupal-6.25-hr2-summercamp/
ll
ll drupal-6.25/
sudo rm -R drupal-6.25/
cd hrpub-drupal-6.25-hr2-summercamp/
ll
..
cd hrpub-drupal-6.23-hr2-summercamp/
ll
sudo cp -R sites/default/files/ ../hrpub-drupal-6.25-hr2-summercamp/sites/default
ll sites/all
sudo cp -R sites/all/* ../hrpub-drupal-6.25-hr2-summercamp/sites/all/
ll ../hrpub-drupal-6.25-hr2-summercamp/sites/
ll ../hrpub-drupal-6.25-hr2-summercamp/sites/all/
cd ../hrpub-drupal-6.25-hr2-summercamp/
drush dl insert_block-6.x-1.x-dev webform-6.x-3.17
..
sudo chown -R aegir:aegir hrpub-drupal-6.25-hr2-summercamp/
cd hrpub-drupal-6.25-hr2-summercamp/
drush dl insert_block-6.x-1.x-dev webform-6.x-3.17
drush pm-update
gst
..
cd hrpub-drupal-6.23-hr2-summercamp/sites/
sudo chown -R aegir:aegir summercamps.uoregon.edu/
..
cat .htaccess 
..
cd hrpub-drupal-6.25-hr2-summercamp/
cat .htaccess 
history | grep httpd
cat /etc/httpd/conf/httpd.conf
cd
cd /var/aegir/config/server
cd /var/aegir/config/
ll
sudo ls
cd server_hrpublicuoregonedu
ll
su aegir 
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
git remote branch
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
gst
git add .
gci -am"new modules and uploads"
gpullom
gpushom
gpullom
ll
ll sites/all/themes/hr2newsflash/
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
gst
vim .gitignore 
sudo vim .gitignore 
ll 
gst
gci -am"site docs"
gpullom
gpushom
gpullom
ll sites/hr.uoregon.edu/files/
ll sites/hr.uoregon.edu/files/benefits/
..
.
..
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
ll
cd sites/hr.uoregon.edu/files/benefits/
ll
..
ll benefits/
ll
sudo chmod g+w benefits/
ll benefits/
sudo chmod -R g+w benefits/
sudo chmod -R 764 benefits/
ll benefits/
sudo chmod -R 7744 benefits/
ll benefits/
sudo chmod -R 777 benefits/
ll benefits/
sudo chmod -R 764 benefits/
ll benefits/
sudo chmod -R 777 benefits/
sudo chmod -R g-s benefits/
sudo chmod -R 777 benefits/
sudo chmod -R g-s benefits/
ll benefits/
sudo chmod -R 774 benefits/
ll benefits/
sudo chmod -R 764 benefits/
ll benefits/
sudo chmod -R 774 benefits/
ll benefits/
..
..
..
drush dl webfm
cd sites/hr.uoregon.edu/
drush pm-enable webfm
drush pm-update
drush cc0
1
drush cc
drush watchdog-delete all
gst
..
..
gst
git add .
gci -am"system updates"
gpushom
gpullom
ll sites/hr.uoregon.edu/files/benefits/
cd sites/hr.uoregon.edu/files/
sudo chmod 777 benefits/
ll benefits/
sudo chmod 775 benefits/
..
..
..
gpullom
gpullom
ll sites/hr.uoregon.edu/files/benefits/
cd sites/hr.uoregon.edu/files/benefits/; sudo chmod 775 cobra
ll
sudo chmod 775 fmla/ oe2011/ oe2012/ retirement\ links/ staff-rates/
ll
ll cobra/
ll cobra/local_icons/
sudo chmod 775 cobra/local_icons/
ll
ll staff-rates/
..
..
.
..
..
..
ll
ll hrdev-drupal-6.22-hr2-summercamp/
ll hrdev-drupal-6.22-hr2-summercamp/sites/
cd hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/
drush cc 
gst
..
..
gst
gci -am"system updates"
gpullom
gpushom
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
git remote -v
git logv
git log
cd platforms/hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/files/benefits/
gst
..
..
..
..
gst
gci -am"system changes"
gst
git add .
gci -am"system changes"
gpullom
gpushom
gpullom
gst
vim .gitignore 
gst
gci -am"system changes"
gpullom
gpushom
gpullom
gpullom
drush cc
cd sites/hr.uoregon.edu/
drush cc
gpullom
drush cc
gpullom
drush cc
gpullom
drush cc
gpullom
drush cc
gpullom
drush cc
gpullom
drush cc
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
gst
gpullom
drush cc
cd sites/hr.uoregon.edu/
drush cc
git co -b mar21SiteMigrate
cat ~/.gitconfig 
git logv
git checkout -b mar21SiteMigrate
..
..
cd sites/all/modules/custom/site_migration_check/
gst
git br
git branch
git checkout master
..
..
..
..
..
gst
git add .
gci -am"verified"
gpullom
gpushom
git branch -d mar21SiteMigrate
git branch  mar21
git branch
git checkout mar21
cd sites/all/modules/custom/site_migration_check/
vim site_migration_check.module 
sudo vim site_migration_check.module 
gst
..
..
..
.
..
..
gci -am"verfied and updated comments"
git merge
git merge master
git branch
git checkout master
gst
git branch -d mar21
git branch -D mar21
gst
gst
gci -am"verified"
gpushom
gpullom
..
ll
ll
su aegir
cd hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/
..
..
gst
gci -am"verfired"
gpullom
gpushom
gpushom
gpullom
..
cd hrstg-drupal-6.25-hr2-summercamp/
gst
git co -b hrstg-drupal-6.2x-hr2
git checkout -b hrstg-drupal-6.2x-hr2
gst
vim .htaccess 
sudo vim .htaccess 
gst
ll
gst
gst
~~gst
gst
..
cd hrpub-drupal-6.25-hr2-summercamp/
gst
git add .
gci -am"files got picked up by git"
gpullom
gpusho
gpullom
gpushom
..
cd hrstg-drupal-6.25-hr2-summercamp/
gst
gst
git add .
gst
git br
git branch
gci -am"hrstage branch commit"
cd platforms/hrstg-drupal-6.25-hr2-summercamp/
gst
git remote -v
ll
cd sites/
ll
cp -R all/modules/ hr.hrstg.uoregon.edu/modules/
ll hr.hrstg.uoregon.edu/modules/
cd hr.hrstg.uoregon.edu/modules/
mv -R modules/* .
mv modules/* .
rm -R css_injector/ feedback/
ll
mv modules/* .
ll modules/
rm -R modules/
ll
..
..
cp -R all/modules/ summercamps.hrstg.uoregon.edu/
ll summercamps.hrstg.uoregon.edu/modules/
ll
cd all/modules/
ll
rm -R *
sudo rm -R *
ll
cd ..
ll
cp -R themes/ ../hr.hrstg.uoregon.edu/ ../summercamps.hrstg.uoregon.edu/
cp -R themes/ ../hr.hrstg.uoregon.edu/
cp -R themes/ ../summercamps.hrstg.uoregon.edu/
cd themes/
ll
rm -R blanknewsflashhr2/ hr2newsflash/ hr2summercampsnewsflash/ hrnewsflash/
sudo rm -R blanknewsflashhr2/ hr2newsflash/ hr2summercampsnewsflash/ hrnewsflash/
ll
..
ll
ll files/
ll files/images/
..
ll 
cd all/
ll libraries/
..
ll hr.hrstg.uoregon.edu/
cp -r all/libraries/ hr.hrstg.uoregon.edu/
cp -r all/libraries/ summercamps.hrstg.uoregon.edu/
rm -R all/libraries/*
sudo rm -R all/libraries/*
ll all/pri
cd all/
ll
cp -R plugins/ ../hr.hrstg.uoregon.edu/
sudo cp -R plugins/ ../hr.hrstg.uoregon.edu/
ll ../hr.hrstg.uoregon.edu/plugins/
ll plugins/
rm -R plugins/*
sudo rm -R plugins/*
..
cd default/
ll
cd files/
ll
ll ../../hr.hrstg.uoregon.edu/files/
ll ../../summercamps.hrstg.uoregon.edu/files/
ll ../../summercamps.hrstg.uoregon.edu/files/
ll 
sudo rm -R *
ll
sudo rm .htaccess 
ll
ll
..
ll
rm -R files/
sudo rm -R files/
ll
..
ll
cd hr.hrstg.uoregon.edu/
drush cc
..
cd summercamps.hrstg.uoregon.edu/
drush cc
ls -a
ls -a ../../..
ls -a ../../../faprod-drupal-6.25/sites/all/
..
ll
cd all
ll
ll plugins/
ls -a ../../faprod-drupal-6.25/sites/all/
ls -a ../../../faprod-drupal-6.25/sites/all/
cp -R ../../../faprod-drupal-6.25/sites/all/ .
cp -R ../../../faprod-drupal-6.25/sites/all/* .
ll
ls -a ../../../faprod-drupal-6.25/sites/all/
rm -r libraries/ modules/ README.txt themes/
sudo rm -r libraries/ modules/ README.txt themes/
ll
cp -R ../../../faprod-drupal-6.25/sites/all/* .
sudo cp -R ../../../faprod-drupal-6.25/sites/all/* .
ll
ll modules/
ls -a modules/
..
cd hr.hrstg.uoregon.edu/modules/
rm -R advanced_help cck customerror devel filefield ie_css_optimizer jquery_ui linkchecker password_strength porterstemmer rules spamspan views_bulk_operations webform calendar ctools custom_search diff google_analytics imce jquery_update logintoboggan pathauto print scanner token views_rss wysiwyg accents captcha custom_breadcrumbs date email iconizer imce_wysiwyg link override_node_options path_redirect recaptcha shib_auth views view_unpublished
ll
cd ../../summercamps.hrstg.uoregon.edu/modules/
rm -R advanced_help cck customerror devel filefield ie_css_optimizer jquery_ui linkchecker password_strength porterstemmer rules spamspan views_bulk_operations webform calendar ctools custom_search diff google_analytics imce jquery_update logintoboggan pathauto print scanner token views_rss wysiwyg accents captcha custom_breadcrumbs date email iconizer imce_wysiwyg link override_node_options path_redirect recaptcha shib_auth views view_unpublished
drush cc
../../hr.hrstg.uoregon.edu/
cd ../../hr.hrstg.uoregon.edu/
drush cc
drush cc
cp -R modules/webform_validation/ ../all/modules/
sudo cp -R modules/webform_validation/ ../all/modules/
..
..
sudo chown -R aegir:aegir sites/
cd sites/hr.hrstg.uoregon.edu/
drush cc
drush mv modules/webform_validation/ .modules/webform_validation/
sudo drush mv modules/webform_validation/ .modules/webform_validation/
sudo mv modules/webform_validation/ .modules/webform_validation/
sudo mv modules/webform_validation/ modules/.webform_validation/
drush cc
drush cc
sudo mv modules/.webform_validation/ modules/webform_validation/
drush cc
sudo cp -R ../all/modules/webform modules/
drush cc
drush cc
../summercamps.hrstg.uoregon.edu/
cd ../summercamps.hrstg.uoregon.edu/
ll
sudo cp -R ../all/modules/webform modules/
drush cc
pm-list
drush pm-list
drush pm-listll
cd modules/
ll
sudo rm -R advanced_help cck customerror devel filefield ie_css_optimizer jquery_ui linkchecker password_strength porterstemmer rules spamspan views_bulk_operations webform calendar ctools custom_search diff google_analytics imce jquery_update logintoboggan pathauto print scanner token views_rss wysiwyg accents captcha custom_breadcrumbs date email iconizer imce_wysiwyg link override_node_options path_redirect recaptcha shib_auth views view_unpublished
drush cc
drush pm-list
../../all/modules/
ll ../../all/modules/
sudo rm -R ../../all/modules/webform_validation/
drush cc
pwd
sudo rm -R admin advagg_bundler advagg_js_cdn advagg_css_compress advagg_js_compress advancedbookblocks taxonomyblocks jquerymenu bubbletimer calais calais_api calais_geo calais_tagmods filefield filefield_meta form_markup imagefield nodereference_field bulk_export ctools ctools_ajax_sample ctools_plugin_example ctools_custom_content ctools_access_ruleset page_manager stylizer views_content clientside_validation_fapi clientside_validation_form clientside_validation_webform content_profile_tokens aggregator blog blogapi translation forum openid ping poll syslog tracker upload append_body_class_w_theme append_body_class_w_node_type_jquery book_child_links css3_styles dhtml_menu_overrides form_display_node_type galleria_override_js jquerymenu_overrides pad_menu site_migration_check table_sorter uoasymptote webform_alter custom_search custom_search_blocks custom_search_i18n custom_search_taxonomy tw_import_delimited calendar_multiday date_php4 devel_generate devel_node_access ie_css_optimizer location_generate node_import path_redirect_generate tagging filedepot filefield_paths hierarchical_select hs_content_taxonomy hs_flatlist hs_menu hs_smallhierarchy hs_taxonomy hs_taxonomy_views image_import pathologic spamspan tableofcontents tableofcontents_block webform_views invite_views galleria location_taxonomy node_export node_export_csv node_export_features node_export_file node_export_relation node_export_serialize node_export_xml accents attachment_links better_formats block_revisions book_override css_injector custom_breadcrumbs db_maintenance diff elements encrypt extractor getid3 iconizer imce insert_block lightbox2 logintoboggan logintoboggan_content_access_integration logintoboggan_rules menu_block mimedetect multiblock nice_menus node_page override_node_options password_strength path_redirect scanner secondsubmit sections sitedoc text_resize user_import views_embed_form views_hierarchy webform_private_upload pageroute_test javascript_aggregator view_unpublished print_pdf print print_mail rdf rules_test porterstemmer services xcal_format services_keyauth rest_server xmlrpc_server comment_service file_service menu_service node_resource node_service search_service system_service taxonomy_service user_service views_service shib_auth captcha image_captcha recaptcha recaptcha_mailhide googleanalytics drupalwiki_tagging_suggest tagging_vocab_suggest tagging_opencalais_suggest taxonomy_csv taxonomy_xml features_test beautytips beautytips_ui imce_wysiwyg jcarousel perms_fieldsets comment_box dblog_common dblog_ext enforce_revlog log_clear dblog_clear dblog_time_filters dblog_filters dblog_host_filter dblog_user_filter logged_in module_weights system_module top_buttons type_defaults util booktree views_rss webfm webfm_image webfm_ipfolder webfm_mp3 webfm_popup webform2pdf webform_validation 
ll
drush cc
drush pm-list
cd custom/
sudo rm -R admin advagg_bundler advagg_js_cdn advagg_css_compress advagg_js_compress advancedbookblocks taxonomyblocks jquerymenu bubbletimer calais calais_api calais_geo calais_tagmods filefield filefield_meta form_markup imagefield nodereference_field bulk_export ctools ctools_ajax_sample ctools_plugin_example ctools_custom_content ctools_access_ruleset page_manager stylizer views_content clientside_validation_fapi clientside_validation_form clientside_validation_webform content_profile_tokens aggregator blog blogapi translation forum openid ping poll syslog tracker upload append_body_class_w_theme append_body_class_w_node_type_jquery book_child_links css3_styles dhtml_menu_overrides form_display_node_type galleria_override_js jquerymenu_overrides pad_menu site_migration_check table_sorter uoasymptote webform_alter custom_search custom_search_blocks custom_search_i18n custom_search_taxonomy tw_import_delimited calendar_multiday date_php4 devel_generate devel_node_access ie_css_optimizer location_generate node_import path_redirect_generate tagging filedepot filefield_paths hierarchical_select hs_content_taxonomy hs_flatlist hs_menu hs_smallhierarchy hs_taxonomy hs_taxonomy_views image_import pathologic spamspan tableofcontents tableofcontents_block webform_views invite_views galleria location_taxonomy node_export node_export_csv node_export_features node_export_file node_export_relation node_export_serialize node_export_xml accents attachment_links better_formats block_revisions book_override css_injector custom_breadcrumbs db_maintenance diff elements encrypt extractor getid3 iconizer imce insert_block lightbox2 logintoboggan logintoboggan_content_access_integration logintoboggan_rules menu_block mimedetect multiblock nice_menus node_page override_node_options password_strength path_redirect scanner secondsubmit sections sitedoc text_resize user_import views_embed_form views_hierarchy webform_private_upload pageroute_test javascript_aggregator view_unpublished print_pdf print print_mail rdf rules_test porterstemmer services xcal_format services_keyauth rest_server xmlrpc_server comment_service file_service menu_service node_resource node_service search_service system_service taxonomy_service user_service views_service shib_auth captcha image_captcha recaptcha recaptcha_mailhide googleanalytics drupalwiki_tagging_suggest tagging_vocab_suggest tagging_opencalais_suggest taxonomy_csv taxonomy_xml features_test beautytips beautytips_ui imce_wysiwyg jcarousel perms_fieldsets comment_box dblog_common dblog_ext enforce_revlog log_clear dblog_clear dblog_time_filters dblog_filters dblog_host_filter dblog_user_filter logged_in module_weights system_module top_buttons type_defaults util booktree views_rss webfm webfm_image webfm_ipfolder webfm_mp3 webfm_popup webform2pdf webform_validation 
ll
sudo rm -R *.tar.gz
ll
..
..
drush cc
drush pm-update
ll modules/
..
cd hr.hrstg.uoregon.edu/
drush cc
sudo cp -R ../all/modules/views/ modules/
drush cc
drush cc
drush pm-list
sudo rm -R accents autoassignrole block_revisions blogapi calendar calendar_ical calendar_multiday camp_content_alter clientside_validation clientside_validation_fapi clientside_validation_form clientside_validation_webform comment_box comment_service content_profile_registration custom_breadcrumbs date_php4 date_repeat date_tools db_maintenance dblog_clear dblog_common dblog_ext dblog_filters dblog_host_filter dblog_time_filters dblog_user_filter devel_generate devel_node_access email_confirm email_verify encrypt enforce_revlog file_service forum gmap gmap_location gmap_macro_builder gmap_taxonomy hs_content_taxonomy hs_flatlist hs_menu hs_smallhierarchy iconizer imce_wysiwyg invite invite_cancel_account invite_stats invite_views jcalendar jquery_update location location_addanother location_fax location_generate location_node location_phone location_search location_taxonomy location_user log_clear logged_in logintoboggan logintoboggan_content_access_integration logintoboggan_rules menu_service mimedetect mollom node_export_csv node_export_features node_export_relation node_export_serialize node_export_xml node_resource node_service nodehierarchy nodehierarchy_views openid override_node_options page_manager pageroute pageroute_test pageroute_ui password_strength path_redirect_generate perms_fieldsets ping pmail porterstemmer requestinvitation rest_server search_service services services_keyauth spamspan statistics stylizer syslog system_service taxonomy_service throttle top_buttons translation trees type_defaults used_modules user_service vcard views_embed_form views_service webfm_image webfm_ipfolder webfm_mp3 workflow workflow_access xcal_format xmlrpc_server 
ll
cd modules/
sudo rm -R accents autoassignrole block_revisions blogapi calendar calendar_ical calendar_multiday camp_content_alter clientside_validation clientside_validation_fapi clientside_validation_form clientside_validation_webform comment_box comment_service content_profile_registration custom_breadcrumbs date_php4 date_repeat date_tools db_maintenance dblog_clear dblog_common dblog_ext dblog_filters dblog_host_filter dblog_time_filters dblog_user_filter devel_generate devel_node_access email_confirm email_verify encrypt enforce_revlog file_service forum gmap gmap_location gmap_macro_builder gmap_taxonomy hs_content_taxonomy hs_flatlist hs_menu hs_smallhierarchy iconizer imce_wysiwyg invite invite_cancel_account invite_stats invite_views jcalendar jquery_update location location_addanother location_fax location_generate location_node location_phone location_search location_taxonomy location_user log_clear logged_in logintoboggan logintoboggan_content_access_integration logintoboggan_rules menu_service mimedetect mollom node_export_csv node_export_features node_export_relation node_export_serialize node_export_xml node_resource node_service nodehierarchy nodehierarchy_views openid override_node_options page_manager pageroute pageroute_test pageroute_ui password_strength path_redirect_generate perms_fieldsets ping pmail porterstemmer requestinvitation rest_server search_service services services_keyauth spamspan statistics stylizer syslog system_service taxonomy_service throttle top_buttons translation trees type_defaults used_modules user_service vcard views_embed_form views_service webfm_image webfm_ipfolder webfm_mp3 workflow workflow_access xcal_format xmlrpc_server 
ll
drush cc
drush pm-list
drush pm-update
drush watchdog-delete all
drush cc
drush pm-update
drush pm-update
n
drush pm-disable views_bulk_operations
drush cc
drush watchdog-delete all
drush pm-update
drush pm-update
drush db-update
drush update-db
drush
drush updb
drush pm-update
drush cc
drush watchdog-delete all
drush
drush rf
mysql
mysql -p
ll /bin/
ll /etc/
ll /etc/httpd/
ll
ll /etc/httpd/
ll /etc/httpd/conf.d/
cat fadev//etc/php.d/mysqli.ini
cat /etc/php.d/mysqli.ini
..
..
sudo chown -R aegir:aegir sites/
..
sudo chown -R aegir:aegir sites/
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
ll
vim .gitignore 
sudo vim .gitignore 
ll sites/hr.uoregon.edu/files/
su aegir
su aegir
cd sites/hr.uoregon.edu/files/
vim robots.txt 
ll
sudo chown aegir robots.txt 
ll
sudo chmod g+w robots.txt 
ll
..
..
..
gst
git add .
gci -am"added hr robots file"
gpullom
gpushom
gpullom
..
cd hrstg-drupal-6.25-hr2-summercamp/sites/hr.hrstg.uoregon.edu/
ll
ll ../../../hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/
ll files/
ll ../../../hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/files/
ll ../../../hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/files/agg
ll ../../../hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/files/advagg_js/
ll files/advagg_js/
ll files/
cd files/
sudo chown -R aegir:apache advagg_js/ advagg_css/
ll
ll advagg_*
ll advagg_css/
..
ll
ll libraries/
ll modules/custom/
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
gst
gci -am"verified"
gpullom
gpushom
cd platforms/
ll
cd fastage-openatrium-1.2-dl-drupal-6.24/
cd sites/webdev.fastage.uoregon.edu/
drush pm-status
drush
drush pm-list
drush pm-update
drush dl draggableviews
drush pm-enable draggableviews
drush db-update
drush db-up
drush 
drush updb
pwd
ll
cd modules/
ll
cd ../../../
..
ll
ll
cd fastage-openatrium-1.2-dl-drupal-6.24/
ll
cd sites/webdev.fastage.uoregon.edu/
lll
cd /var/aegir/
ll
cd drush-backups/
ll
cd webdevfastageuor/
ll
cd 20120327164433/
ll
cd drupal/
ll
..
..
ll
..
..
..
..
cd etc/
ll
history | grep backup
su aegir
history | grep back
cd 
ll
cd drupal_backup/
ll
sudo cp /var/remote.bexec/fastage_mysqlbak/daily/webdevfastageuor/webdevfastageuor_2012-03-26_23h20m.Monday.sql.gz 
sudo cp /var/remote.bexec/fastage_mysqlbak/daily/webdevfastageuor/webdevfastageuor_2012-03-26_23h20m.Monday.sql.gz .
ll
sudo chown vid:default webdevfastageuor_2012-03-26_23h20m.Monday.sql.gz 
ll
tar -zxvf webdevfastageuor_2012-03-26_23h20m.Monday.sql.gz 
gzip --help
gzip -dc webdevfastageuor_2012-03-26_23h20m.Monday.sql.gz 
ll
gzip -dc webdevfastageuor_2012-03-26_23h20m.Monday.sql.gz webdevfastageuor_2012-03-26_23h20m.Monday.sql
ll
gzip --help
gunzip webdevfastageuor_2012-03-26_23h20m.Monday.sql.gz 
ll
mysql
mysql -p
mysql --user=vid -p webdevfastageuor < webdevfastageuor_2012-03-26_23h20m.Monday.sql 
mysql --user=vid -p webdevfastageuor < webdevfastageuor_2012-03-26_23h20m.Monday.sql 
cd
cd platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/
drush dl draggableviews
drush pm-enable
drush pm-update
drush updb
ln -s /var/log/httpd/error_log
cat error_log 
sudo cat error_log 
cd 
cd platforms/fastage-openatrium-1.2-dl-drupal-6.24/
ll
gst
cd sites/webdev.fastage.uoregon.edu/
ll
gst
git add .
gci -am"user add's"
gpullom
gpushom
cd platforms/
cd fastage-openatrium-1.2-dl-drupal-6.24/
cd sites/webdev.fastage.uoregon.edu/
drush pm-update
exit
..
cd hrdev-
cd ../../
cd hrdev-drupal-7.1
cd hrdev-drupal-7.12/
ll sites/
cd sites/aaeo.hrdev.uoregon.edu/
drush pm-update
..
..
..
cd hrpub-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/
open user_style_hr.css 
alias
pwd
gst
..
..
..
gst
gci -am"sitedoc"
gpullom
gpushom
gpullom
..
..
cd fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/
gst
gst
gci -am"verified updated js and css"
gpushom
gpullom
git diff local.settings.php 
open local.settings.php 
vim local.settings.php 
ll
ll /var/
ll /var/remote.bexec/
ln -s /var/remote.bexec/ backups
cd backups/
ll
cd fastage_filebak/
ll
scp --help
cp fastage_2012-03-30_23h10m.tgz ~/backups/
sudo !
sudo cp fastage_2012-03-30_23h10m.tgz ~/backups/
ll ~/backups
..
ll
mv fastage_2012-03-30_23h10m.tgz ~/
ll
sudo mv fastage_2012-03-30_23h10m.tgz ~/
ll
cd 
ll
rm backups
ll
ll /var/remote.bexec/
ll /var/remote.bexec/fadev_filebak/
ll /var/remote.bexec/fadev_mysqlbak/
ln -s /var/remote.bexec/ backups
cd /
ll /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git
cd 
cd backups/
tar -x ./var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -O fadev_2012-03-31h00m.tgz > ~/fastage_openatrium.git
tar -x var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -z -O fadev_2012-03-31h00m.tgz > ~/fastage_openatrium.git
tar -x /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -z -O fadev_2012-03-31h00m.tgz > ~/fastage_openatrium.git
tar -tv /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -z -O fadev_2012-03-31h00m.tgz > ~/fastage_openatrium.git
ll
cd fadev_filebak/
tar -x /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -z -O fadev_2012-03-31h00m.tgz > ~/fastage_openatrium.git
ll
tar -x ./var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -z -O fadev_2012-03-31_23h00m.tgz > ~/fastage_openatrium.git
tar -xz ./var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -O fadev_2012-03-31_23h00m.tgz > ~/fastage_openatrium.git
tar -xz /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -O fadev_2012-03-31_23h00m.tgz > ~/fastage_openatrium.git
tar -xz .var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -O fadev_2012-03-31_23h00m.tgz > ~/fastage_openatrium.git
tar -xz var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git -f -O fadev_2012-03-31_23h00m.tgz > ~/fastage_openatrium.git
tar -xzfO .var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git fadev_2012-03-31_23h00m.tgz > ~/fastage_openatrium.git
tar -tvf .var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git fadev_2012-03-31_23h00m.tgz
tar -tvf var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git fadev_2012-03-31_23h00m.tgz
tar -tvf /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git fadev_2012-03-31_23h00m.tgz
tar -tvf fadev_2012-03-31_23h00m.tgz /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git
tar -tvfz fadev_2012-03-31_23h00m.tgz /var/aegir/platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/.git
tar -tvfz /var/logs fadev_2012-03-31_23h00m.tgz 
tar -tvfz fadev_2012-03-31_23h00m.tgz /var/log/
tar -tvfz fadev_2012-03-31_23h00m.tgz
exit
cd platforms/hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/
..
..
drush pm-update
cd sites/hr.uoregon.edu/
drush pm-update
ll ../all/modules/
cd ../all/modules/
drush dl advagg-6.x-1.8 image-6.x-1.2 multiblock-6.x-1.4
cd ../../hr.uoregon.edu/
drush updb
..
cd summercamps.uoregon.edu/
drush updb
..
cd hr.uoregon.edu/
gst
git add .
gci -am"new files and updates"
gst
gpullom
gpushom
gpullom
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
gst
gci -am"site docs"
gpl
vim ~/.bash_aliases 
source ~/.bash_aliases 
gpl
gps
gpl
gst
git add .
gci -am"site docs"
gpl
gps
gpl
gpl
gpl
gpl
gpl
gpl
gpl
gpl
gpl
cd platforms/
ll
cd hrpub-drupal-7.12/sites/
ll
..
..
cd hrpub-drupal-710/sites/
ll
..
..
cd hrpub-drupal-6.23/sites/
ll
cd recruitoutreach.aaeo.uoregon.edu/
ll
drush status
drush pm-update
drush dl linkchecker_report
drush pm-enable linkchecker_report
drush pm-enable linkchecker_report
cd platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/features/
ll
git st
gst
git add ../files/js/gmap_markers.js
gci -am"gmap marker update. I guess."
git diff
git mv linknode/ ../modules/custom/
gst
..
gst
gci -am"moved link node feature to modules/custom"
gpl
gps
git mv modules/custom/linknode/ features/
gst
gci -am"putting it back for a moment"
gps
gpl
git mv features/linknode/ modules/custom/
gst
gci -am"moved link node feature to modules/custom"
gpl
gps
cd platforms/
cd hrpub-drupal-6.23
cd sites/
ll
cd recruitoutreach.aaeo.uoregon.edu/
drush pm-update
exit
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
gst
gci -am"site doc and settings"
gpl
gps
ll
cd platforms/
ll
cd fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/
gst
git df
git diff
pwd
gci -am"syntax clean up."
gpl
gps
gpl
gpl
cd platforms/fastage-openatrium-1.2-dl-drupal-6.24/sites/webdev.fastage.uoregon.edu/modules/custom/
gst
rm -R aggregator_block/
ll
gst
gpl
gpl
gst
git diff
gst
gci -am"aegir updates"
gpl
gst
gci -am"verified"
gst
gpl
gpl
pwd..
..
..
..
..
..
cd hrpub-drupal-6.25-hr2-summercamp/
gst
gci -am"sitedoc"
git add .
gci -am"sitedoc"
gst
gpl
gps
gpl
cd platforms/hrpub-drupal-6.25-hr2-summercamp/sites/
gst
git add .
gci -am"sitedoc and settings"
gpl
gps
gpl
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
ll
gst
git df
git diff
git add .
gci -am"new files and verify"
gpl
gps
ll
cd sites/
gst
cd hr.uoregon.edu/
ll
vim local.settings.php
vim local.settings.php
gst
gpl
git add .
gci -am"allocating more ram"
gps
drush pm-update
..
..
..
ll
cd hrpub-drupal-7.12/
ll sites/
..
cd hrpub-drupal-6.23/
ll sites/
cd sites/recruitoutreach.aaeo.uoregon.edu/
drush pm-update
..
..
..
ll
ll hrstg-drupal-6.25-hr2-summercamp/sites/
cd hrpub-drupal-6.23/sites/
ll
..
..
cd hrpub-drupal-6.25-hr2-summercamp/sites/
ll
ll hr.uoregon.edu/libraries/
cd all/libraries/
ll
ll tinymce/
cd platforms/hrdev-drupal-
cd platforms/hrdev-drupal-7.12/
cd sites/
ll
cd aaeo.hrdev.uoregon.edu/
drush pm-update
drush pm-update
..
..
..
ll
cd hrpub-drupal-6.23/
ll sites/
cd sites/cstdac.uoregon.edu/
drush pm-update
ll 
ll libraries/
..
ll all/libraries/
ll
ll all/modules/
cd cstdac.uoregon.ed
cd cstdac.uoregon.edu/
drush dl css_injector
drush pm-enable css_injector
ll
ll files/
ll
ll modules/
ll files/
..
cd cstdac.uoregon.edu/
ll
cd platforms/hrpub-drupal-6.25-hr2-summercamp/
gst
gci -am"verify"
gpl
gps
gpl
cd platforms/hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
ll
cd platforms/
ll
cd fastage-openatrium-1.2-dl-drupal-6.24/
cd sites/webdev.uoregon.edu/
drush pm-update
..
..
..
ll
cd hrdev-drupal-7.12/sites/aaeo.hrdev.uoregon.edu/
drush status
drush pm-update
drush dl content_taxonomy
drush enable content_taxonomy
exit
cd platforms/
ll
cd hrstg-drupal-6.25-hr2-summercamp/
ll sti
ll sites/
cd platforms/
cd hrpub-drupal-6.23/sites/cstdac.uoregon.edu/
drush dl sitedoc
drush enable sitedoc
drush pm-update
..
ll
cd recruitoutreach.aaeo.uoregon.edu/
drush pm-update --no-core
..
..
..
cd makeFiles/
ll
sudo cp baprd-drupal-626-with-shib.make hrprd-drupal-626-no-shib.make
sudo chown aegir:aegir hrprd-drupal-626-no-shib.make 
cat hrprd-drupal-626-no-shib.make 
vim hrprd-drupal-626-no-shib.make 
sudo vim hrprd-drupal-626-no-shib.make 
..
cd hrpub-drupal-6.23/sites/all/modules/
ll
drush
gst
..
..
cd cstdac.uoregon.edu/
gst
git add .
gci -am"commit recent updates prior to adding new editor dylan"
..
..
cd sites/
cd recruitoutreach.aaeo.uoregon.edu/
drush dl date
drush dl custom_error
drush dl customerror
vim ../../../makeFiles/hrprd-drupal-626-no-shib.make 
cd ../../../makeFiles/
ll
gst
git add ."
gci -am"new make files"
git add .
gci am"new make files"
gci -am"new make files"
gst
vim hrprd-drupal-626-no-shib.make 
sudo vim hrprd-drupal-626-no-shib.make 
gst
git diff
history | grep patch
git diff --no-prefix > hrprd-drupal-626-no-shib.make-security-updates-050312.patch
..
ll
su aegir
cd makeFiles/
vim hrprd-drupal-626-no-shib.make 
..
cd makeFiles/
ll
git diff hrdev-drupal-623-base-plus-shib-make. hrprd-drupal-626-no-shib.make
gst
gci -am"updated modules to latest versions"
git add .
gci -am"patch for security updates"
gst
git diff hrdev-drupal-623-base-plus-shib-make. hrprd-drupal-626-no-shib.make
git diff hrprd-drupal-626-no-shib.make hrdev-drupal-623-base-plus-shib-make.
gps
cd ../hrpub-drupal-6.23/sites/cstdac.uoregon.edu/
drush dl custom_breadcrumbs customerror devel spamspam view_unpublished views_rss
drush dl spamspan
cd ../recruitoutreach.aaeo.uoregon.edu/
drush dl custom_breadcrumbs customerror devel spamspan view_unpublished views_rss
..
..
..
cd hrpub-drupal-6.26/
cd sites/all/modules/
drush pm-update
drush dl views path-auto
drush dl pathauto
cd platforms/
ll
cd hrdev-drupal-7.12/sites
ll all/modules/
ll ../../fadev-drupal-7.14/sites/all/modules/
drush dl field_group
drush dl link
drush dl linkchecker
drush dl taxonomy_menu
drush dl hierarchical_select
..
..
cd makeFiles/
ll
cat fadev-drupal-714.make 
cp fadev-drupal-714.make hrdev-drupal-714-noshib.make 
sudo cp fadev-drupal-714.make hrdev-drupal-714-noshib.make 
vim hrdev-drupal-714-noshib.make 
sudo vim hrdev-drupal-714-noshib.make 
ll
mv hrdev-drupal-714-noshib.make hrdev-drupal-714-no-shib.make 
sudo mv hrdev-drupal-714-noshib.make hrdev-drupal-714-no-shib.make 
ll
sudo vim hrdev-drupal-714-no-shib.make 
cd ../hrdev-drupal-7.14/
drush dl views
drush dl webform
ll sites/
cd sites/
cd all/libraries/dompdf/lib
ll
sudo chown -R aegir:apache fonts/
cd platforms/
ll
ll hrpub-drupal-6.23/sites/
ll hrpub-drupal-6.26/sites/
ll
pwd
cd hrpub-drupal-6.26/sites/all/modules/
drush pm-update
pwd
cd ../../../
..
cd hrpub-drupal-6.23/sites/recruitoutreach.aaeo.uoregon.edu/
ll modules/
drush dl customerror
ll modules/custom
ll ../all/modules/custom
ll ../all/modules/
drush dl webformblock
drush pm-enable webformblock
..
cd cstdac.uoregon.edu/
ll modules/
drush dl views_bulk_operations-6.x-1.13
cd ../../../hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/
drush pm-update --no-core
history | grep make
drush make-generage hrpub-drupal-6.26-hr2-summercamp.make.test
drush make-generate hrpub-drupal-6.26-hr2-summercamp.make.test
ll
..
ll
..
ll
mv hrpub-drupal-6.26-hr2-summercamp.make.test ../makeFiles/
sudo mv hrpub-drupal-6.26-hr2-summercamp.make.test ../makeFiles/
cd ../makeFiles/
ll
mv hrpub-drupal-6.26-hr2-summercamp.make.test testing/
sudo mv hrpub-drupal-6.26-hr2-summercamp.make.test testing/
cd testing/
ll
gst
..
gci -am"new make files"
git add .
gci -am"new make files"
gpl
gps
drush
cd ../hrpub-drupal-6.25-hr2-summercamp/
drush pm-list
cd sites/hr.uoregon.edu/
drush pm-list
cd /Volumes/Macintosh\ HD/Applications/MAMP/htdocs/fadev/var_aegir_platforms/hrpub-drupal-6.x/sites/all/modules/logintoboggan 
cd ~/htdocs/fadev/var_aegir_platforms/hrpub-drupal-6.x/sites/all/modules/logintoboggan 
gst
..
ll
..
ll
gst
gci -am"settings update"
gpl
gps
..
ll
sudo cp hrpub-drupal-6.25-hr2-summercamp/ hrdev-drupal-6.25-hr2-summercamp
sudo cp -R hrpub-drupal-6.25-hr2-summercamp/ hrdev-drupal-6.25-hr2-summercamp
ll
cd hrdev-drupal-6.25-hr2-summercamp/sites/
ll
rm -R hr.uoregon.edu/
sudo rm -R summercamps.uoregon.edu/
ll
sudo rm -R hr.uoregon.edu/
ll
..
ll
..
ll
sudo chown -R aegir:aegir hrdev-drupal-6.25-hr2-summercamp/
cp hrpub-drupal-6.25-hr2-summercamp/.htaccess hrdev-drupal-6.25-hr2-summercamp/
sudo cp hrpub-drupal-6.25-hr2-summercamp/.htaccess hrdev-drupal-6.25-hr2-summercamp/
ll hrdev-drupal-6.25-hr2-summercamp/
cd hrdev-drupal-6.25-hr2-summercamp/
vim .htaccess 
sudo vim .htaccess 
ll
..
cd hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/
drush cc
cd platforms/hrdev-drupal-6.25-hr2-summercamp/
ll
..
sudo chown -R aegir:aegir hrdev-drupal-6.25-hr2-summercamp/
sudo chmod -R 755 hrdev-drupal-6.25-hr2-summercamp/
git branch -d hrdev
git branch
git branch hrdev
git branch
git
pwd
ll
git branch
git branch -d hrdev
ll /var/aegir/platforms/faprod-drupal-7.14/.htaccess
cat /var/aegir/platforms/faprod-drupal-7.14/.htaccess
cd platforms/hrdev-drupal-7.14/
ll sites/
cd sites/aaeo.hrdev.uoregon.edu/
ll
..
ll all/modules/
drush dl token
drush dl webform pathauto
dursh
drush
drush pm-update -
drush pm-update
ll
cd aaeo.hrdev.uoregon.edu/
drush pm-update
drush updb
drush cc
drush dl hierarchical_select taxonomy_menu
drush updb
drush cc
ll ../../../makeFiles/
cat ../../../makeFiles/fadev-drupal-714.make 
cat ../../../makeFiles/fadev-drupal-714.make 
ll
..
ll
ll all/themes/
ll all/themes/zen/
..
ll
cd sites/aaeo.hrdev.uoregon.edu/
drush dl advanced_help entityreference-7.x-1.x-dev entity-7.x-1.x-dev entityreference_view_widget entityreference_prepopulate field_group field_collection
drush updb
ll modules/
ll ../all/modules/
drush enable advanced_help entityreference-7.x-1.x-dev entity-7.x-1.x-dev entityreference_view_widget entityreference_prepopulate field_group field_collection hierarchical_select taxonomy_menu
drush pm-enable entity entityreference
drush updb
drush pm-update
drush cc
ll ../../../
ll ../../../fadev-drupal-7.14/sites/
ll ../../../fadev-drupal-7.14/sites/research3.fadev.uoregon.edu/themes/
ll ../../../fadev-drupal-7.14/sites/all/themes/
..
..
..
ll
ll faprod-drupal-6.25/sites/all/libraries/
ll hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
ll hrpub-drupal-6.25-hr2-summercamp/sites/hr.uoregon.edu/libraries/
ll faprod-drupal-7.14/sites/all/libraries/
cp faprod-drupal-7.14/sites/all/libraries/ckeditor/ hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
cp -R faprod-drupal-7.14/sites/all/libraries/ckeditor/ hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
sudo cp -R faprod-drupal-7.14/sites/all/libraries/ckeditor/ hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
ll faprod-drupal-7.14/sites/all/libraries/
llhrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
ll hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
sudo chown -R aegir:aegir hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
ll hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/
ll hrpub-drupal-6.25-hr2-summercamp/sites/all/libraries/ckeditor/
cd platforms/hrdev-drupal-7.14/sites/aaeo.hrdev.uoregon.edu/
drush dl profiler
drush pm-enable profiler
ll
ll modules/
sudo mv modules/profiler/ libraries/
ll
cd libraries/
ll
drush help rsync
..
..
..
..
drush rsync --exclude-sites @platform_hrpubdrupal625hr2summercamp @platform_hrdevdrupal625hr2summercamp
cd platforms/
ll
drush rsync --exclude=".htaccess" --exclude-sites @platform_hrpubdrupal625hr2summercamp @platform_hrdevdrupal625hr2summercamp
drush @hr.uoregon.edu cache-clear all
drush @hr.uoregon.edu @hr.hrdev.uoregon.edu cache-clear all
drush @hr.hrdev.uoregon.edu cache-clear all
drush @hr.hrdev.uoregon.edu cache-clear
drush rsync @hr.uoregon.edu:%hr.uoregon.edu @hr.hrdev.uoregon.edu:%hr.hrdev.uoregon.edu
drush rsync @hr.uoregon.edu:%sites/hr.uoregon.edu @hr.hrdev.uoregon.edu:%sites/hr.hrdev.uoregon.edu
drush rsync @hr.uoregon.edu @hr.hrdev.uoregon.edu
drush sql-dump --ordered-dump --structure-tables-key=common @hr.uoregon.edu @hr.hrdev.uoregon.edu
cd hrpub-drupal-6.25-hr2-summercamp/
gst
git logv
..
ll
cd fadev-drupal-7.14/
ll
ll sites/
ll sites/cosmic.fadev.uoregon.edu/
ll sites/cosmic.fadev.uoregon.edu/themes/
cd sites/cosmic.fadev.uoregon.edu/themes/
ll
cd cosmic/
ll
....
..
ll
..
..
ll
ll cosmic.fadev.uoregon.edu/
l
gst
cd cosmic.fadev.uoregon.edu/
ll
gst
git remote -v
..
..
ll
cd /var/www/html/l
ll
cd /var/www/
ll
cd html/
ll
cd ac/
ll
gst
git add .
gci -am"adding uploaded files"
gpl
gps
ll
ll _assets/
..
cd ac/
git remote -v
gst
git add .
ll
gst
git add .
gci -am"new backup"
ll
gst
gpl
gps
gpl
gpl
cd /var/www/html/ac/
ll
gst
git add .
gci -am"attachments"
gps
cd _assets/
ll
cd activeCollab-corporate_2.3.6
ll
cd for-upload/
ll
mv . ../../../
..
..
..
history | grep chown
sudo chown -R aegir:aegir .
ll
sudo chown -R apache:apache .
gst
gst
git checkout -- .
ll
gst
sudo chown -R aegir:aegir .
git checkout -- .
ll
sudo chown -R apache:apache .
sudo chown -R aegir:aegir .git
sudo chown -R aegir:aegir .gitignore 
gst
rm activecollab/application/modules/importer/
rm -R activecollab/application/modules/importer/
sudo rm -R activecollab/application/modules/importer/
rm public/assets/images/icons/delete.png 
sudo rm public/assets/images/icons/delete.png 
sudo rm public/assets/modules/importer/
sudo rm -R public/assets/modules/importer/
sudo rm -R public/installer/
gst
git co -b 2.3.6
git checkout -b 2.3.6
groups
find . -group apache -print -exec chown -hR vid:vid {} \;
find . -group apache -print -exec sudo chown -hR vid:vid {} \;
ll
find . -group vid -print -exec sudo chown -hR apache:apache {} \;
ll
cd public/
ll
sudo rm -R installer/
ll
find . -group apache -print -exec sudo chown -hR vid:vid {} \;
..
find . -group apache -print -exec sudo chown -hR vid:vid {} \;
gst
git add .
ll"
ll
sudo chown -R aegir:aegir .git
sudo chown -R aegir:aegir .gitignore 
git add .
find . -group vid -print -exec sudo chown -hR apache:apache {} \;
ll
sudo chown -R aegir:aegir .gitignore 
sudo chown -R aegir:aegir .git
git add .
ll public/
ll public/avatars/
sudo chmod -R o-x public/avatars/
ll public/avatars/
sudo chmod -R g+r public/avatars/
ll public/avatars/
sudo chmod -R o+r public/avatars/
ll
ll public/avatars/
sudo chmod -R u-x public/avatars/
ll public/avatars/
git add .
ll public/brand/
sudo chmod -R 644 public/brand/
git add .
ll public/brand/
sudo chmod 644 public/brand/
ll public/brand/
ll
cd public/
ll
cd brand/
..
sudo chmod 744 public/brand/
ll public/brand/
ll public/
sudo chmod 644 public/brand/.
ll public/
sudo chmod -R 644 public/brand/.*
sudo chmod 744 public/brand/
ll public/
gst
sudo chmod 755 public/brand/
ll
cd public/
sudo chmod 755 public
ll
cd public/
ll
cd brand/
ll
..
..
git add .
sudo chown -R vid:vid public/
sudo chown -R apache:apache public/
ll
git add .
ll public/upgrade/assets/images/system_settings.gif 
ll public/upgrade/assets/images/
sudo chown -R vid:vid public/
sudo chown -R apache:apache public/
ll public/upgrade/assets/images/
find /var/www/html/ac/ -type d -perm 777 -print -exec chmod 755 {} \;
find /var/www/html/ac/ -type d -perm 777 -print -exec sudo chmod 755 {} \;
find /var/www/html/ac -type d -perm 777 -print -exec sudo chmod 755 {} \;
sudo chown -R apache:apache public/
find /var/www/html/ac -type d -perm 777 -print -exec sudo chmod 755 {} \;
ll public/assets/images/
sudo find /var/www/html/ac -type d -perm 777 -print -exec sudo chmod 755 {} \;
ll public/assets/images/
sudo find /var/www/html/ac -type d -perm 777 -print -exec sudo chmod 755 {} \;
find /var/www/html/ac -type d -perm 777 -print -exec sudo chmod 755 {} \;
git br master
git co master
git checkout master
gst
git reset HEAD .
gst
git checkout 2.3.6
gst
git checkout -- .
sudo chmod -R 755 .
ll
git checkout -- .
sudo chown -R vid:vid .
sudo chown -R aegir:aegir .
git checkout -- .
gst
git checkout master
gst
git st
gst
git reset HEAD .
gst
rm activecollab/application/modules/importer/
..
cd ac/
ll
git logv
git log
ll
ll
cd _assets/
..
sudo chown -R aegir:aegir _assets/ 
cd _assets/
ll
sudo rm -R activeCollab-corporate_2.3.6
sudo rm -R activeCollab-corporate_3.1.1/
unzip activeCollab-corporate_2.3.6.zip 
ll
chmod 777 activeCollab-corporate_2.3.6.zip 
sudo chmod 777 activeCollab-corporate_2.3.6.zip 
..
ll
cd _assets/
l
ll
unzip activeCollab-corporate_2.3.6.zip 
ll
..
sudo chmod 777 _assets/
cd _assets/
unzip activeCollab-corporate_2.3.6.zip 
ll
..
ll
sudo mv _assets/corporate/for-upload/activecollab/ .
ll
sudo mv public/assets/ public/_assets; sudo mv _assets/corporate/for-upload/public/assets/ public/
ll public/
gst
cd public/
mv _assets/modules/tickets_plus/ assets/modules/
sudo mv _assets/modules/tickets_plus/ assets/modules/
sudo mv _assets/modules/syntaxhighlight/ assets/modules/
sudo mv _assets/modules/projectmenuobjectcount/ assets/modules/
gst
sudo mv _assets/modules/planning/ assets/modules/
gst
..
sudo mv _activecollab/application/modules/tickets_plus/ activecollab/application/modules/
gst
sudo mv _activecollab/application/modules/syntaxhighlight/ activecollab/application/modules/
sudo mv _activecollab/application/modules/projectmenuobjectcount/ activecollab/application/modules/
gst
sudo mv _activecollab/application/modules/planning/ activecollab/application/modules/
gst
git checkout -- _assets/activeCollab-corporate_2.3.6
gst
gst
sudo chown -R _assets/
sudo chown -R _assets/ aegir:aegir
sudo chown -R aegir:aegir _assets/
sudo chown -R apache:apache .
sudo chown -R aegir:aegir _assets/
sudo chown -R aegir:aegir .git
sudo chown -R aegir:aegir .giti
sudo chown -R aegir:aegir .gitignore 
gst
gst
git df
git diff
gst
git add .
gci -am"2.3.6 update"
gps
ll
sudo chown -R aegir:aegir .
sudo chown -R apache:apache .
sudo chown -R aegir:aegir .gitignore 
sudo chown -R aegir:aegir .git
sudo chown -R aegir:aegir _assets/
ll
sudo chmod 644 index.php 
ll
sudo chmod 644 api.php 
ll
ll public/upgrade/
cd public/upgrade/
ll
sudo chmod 644 index.php 
ll
..
..
..
cd ac/
sudo chmod 644 /activecollab/3.1.1/ActiveCollab.class.php
sudo chmod 644 activecollab/3.1.1/ActiveCollab.class.php
ll
cd work/
ll
..
cd upload/
..
gst
git branch
ll
ll upload/
..
ll
cd ac/
ll
ll _activecollab\ 2.3.4/
cd _activecollab\ 2.3.4/
ll
find ./ -iname "*.php" -exec sudo chmod u=rw,g=r,o=r {} \;
ll
..
find ./ -iname "*.php" -exec sudo chmod u=rw,g=r,o=r {} \;
ll
sudo chmod 775 public/
find ./ -type d -exec sudo chmod u=rwx,g=rwx,o=rx {} \;
ll
sudo chown apache:apache compile/
ll
rm -R compile/
sudo mv _compile/ compile
..
cd ad
ll
cd ac
ll
find ./ -iname "*.png" -exec sudo chmod u=rw,g=r,o=r {} \;
find ./ -iname "*.gif" -exec sudo chmod u=rw,g=r,o=r {} \;
gst
gci -am"1st attempt at 3.1.1"
find ./ -iname "*.ico" -exec sudo chmod u=rw,g=r,o=r {} \;
gci -am"1st attempt at 3.1.1"
find ./ -iname "*.txt" -exec sudo chmod u=rw,g=r,o=r {} \;
gci -am"1st attempt at 3.1.1"
gst
gst
sudo mv
sudo mv _assets/activeCollab-corporate_3.1.1/for-upload/activecollab/ .
ll
sudo mv _assets/activeCollab-corporate_3.1.1/for-upload/public/ .
sudo mv _assets/activeCollab-corporate_3.1.1/for-upload/tasks/ .
sudo mv _assets/activeCollab-corporate_3.1.1/for-upload/index.php .
sudo mv _assets/activeCollab-corporate_3.1.1/for-upload/api.php 
sudo mv _assets/activeCollab-corporate_3.1.1/for-upload/api.php .
sudo mv _assets/activeCollab-corporate_3.1.1/for-upload/config/defaults.php config/
sudo mv _assets/activeCollab-corporate_3.1.1/for-upload/config/version.php config/
ll custom/
ll public/
vim config/config.php 
sudo vim config/config.php 
sudo vim config/config.php 
sudo vim config/config.php 
find ./ -iname "*.txt" -exec sudo chmod u=rw,g=r,o=r {} \;
find ./ -iname "*.ico" -exec sudo chmod u=rw,g=r,o=r {} \;
find ./ -iname "*.gif" -exec sudo chmod u=rw,g=r,o=r {} \;
find ./ -iname "*.png" -exec sudo chmod u=rw,g=r,o=r {} \;
find ./ -type d -exec sudo chmod u=rwx,g=rwx,o=rx {} \;
find ./ -iname "*.php" -exec sudo chmod u=rw,g=r,o=r {} \;
sudo chown -R apache:apache .
sudo chown -R aegir:aegir _assets/
sudo chown -R aegir:aegir .git
sudo chown -R aegir:aegir .gitignore 
suco chmod 777 public/assets/
sudo chmod 777 public/assets/
sudo chmod 777 public/avatars/
sudo chmod 777 public/logos/
sudo chmod 777 public/notebook_covers/
sudo chmod 777 public/projects_icons/
find ./ -iname "*.css" -exec sudo chmod u=rw,g=r,o=r {} \;
find ./ -iname "*.jpg" -exec sudo chmod u=rw,g=r,o=r {} \;
sudo rm -R custom/localization/
gst
gci -am"v 3.1.1 successful"
gst
git add .
find ./ -iname "*.map" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.ttf" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavu-fonts-ttf-2.33/AUTHORS 
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavu-fonts-ttf-2.33/BUGS
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavu-fonts-ttf-2.33/LICENSE 
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavu-fonts-ttf-2.33/NEWS 
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavu-fonts-ttf-2.33/README 
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavusans.ctg.z 
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavusans.z 
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavusansb.ctg.z 
git add .
sudo chmod 644 activecollab/3.1.1/angie/classes/tcpdf/fonts/dejavusansb.z 
git add .
cd activecollab/3.1.1/angie/classes/tcpdf/fonts/
ll
find ./ -iname "*.z" -exec sudo chmod u=rw,g=r,o=r {} \;
ll
..
..
..
.
..
..
..
git add .
cd activecollab/3.1.1/angie/classes/tcpdf/fonts/
ll
cd freefont-20100919/
ll
sudo chmod 644 .
ll
..
ll
sudo chmod 775 freefont-20100919/
ll
cd freefont-20100919/
ll
..
sudo chmod -R 664 freefont-20100919/
ll
sudo chmod 775 freefont-20100919/
ll freefont-20100919/
..
..
..
..
..
..
git add .
find ./ -iname "*.crt" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.fdf" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.p12" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.js" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.tpl" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.eml" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.sef" -exec sudo chmod u=rw,g=r,o=r {} \;
find ./ -iname "*.swf" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
sudo chmod -R 644 activecollab/3.1.1/angie/frameworks/environment/assets/default/fonts/free-font/
git add .
sudo chmod 755 activecollab/3.1.1/angie/frameworks/environment/assets/default/fonts/free-font/
git add .
find ./ -iname "*.psd" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.ser" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.ini" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
find ./ -iname "*.php" -exec sudo chmod u=rw,g=r,o=r {} \;
git add .
ll activecollab/3.1.1/angie/vendor/htmlpurifier/htmlpurifier/HTMLPurifier/DefinitionCache/Decorator/
find ./ -type d -exec sudo chmod u=rwx,g=rwx,o=rx {} \;
sudo chmod 664 activecollab/3.1.1/angie/vendor/htmlpurifier/htmlpurifier/HTMLPurifier/DefinitionCache/Decorator/Template.php.in 
git add .
ll activecollab/3.1.1/angie/vendor/htmlpurifier/htmlpurifier/HTMLPurifier/DefinitionCache/Serializer
find -type f ! -perm -444
find ./ -type f ! -perm -444 -exec sudo chmod u=rw,g=r,o=r {} \;
find -type f ! -perm -444
find -type f ! -perm -444
find -type f ! -perm -644
git add. 
git add .
gci -am"v 3.1.1 successful now with all files"
gps
cd platforms/hrdev-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/
ll
vim attachment-links.tpl.php 
sudo vim attachment-links.tpl.php 
pwd
ll
cd platforms/hrdev-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/
vim attachment-links.tpl.php 
..
..
ll
..
ll
sudo rm -R hr.uoregon.edu/
ll
..
sudo vim .htaccess 
sudo vim sites/all/themes/hr2newsflash/attachment-links.tpl.php 
sudo vim sites/all/themes/hr2newsflash/node-links.tpl.php 
sudo vim sites/all/themes/hr2newsflash/node-links.tpl.php 
cd platforms/hrdev-drupal-6.25-hr2-summercamp/
sudo vim sites/all/themes/hr2newsflash/node-links.tpl.php 
cd sites/all/themes/hr2newsflash/
..
..
..
..
..
cd hrpub-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/
cp /var/aegir/platforms/hrdev-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/node-links.tpl.php
cp /var/aegir/platforms/hrdev-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/node-links.tpl.php ./
ll
sudo ll
sudo cp /var/aegir/platforms/hrdev-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/node-links.tpl.php ./å
ll
..
sudo cp /var/aegir/platforms/hrdev-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/node-links.tpl.php hr2newsflash/
ll hr2newsflash/
sudo cp /var/aegir/platforms/hrdev-drupal-6.25-hr2-summercamp/sites/all/themes/hr2newsflash/attachment-links.tpl.php hr2newsflash/
ll hr2newsflash/
..
..
..
gst
ll sites/all/themes/hr2newsflash/
gst
rm sites/all/themes/hr2newsflash/\303\245
rm sites/all/themes/hr2newsflash/¬
ll sites/all/themes/hr2newsflash/
rm sites/all/themes/hr2newsflash/å
sudo rm sites/all/themes/hr2newsflash/å
gst
git add .
gci -am"updating node and attachment links to use js instead of drupal goto"
gpl
git br
git branch
gps
exit
cd html/ac/
gst
git add .
cat logs/2012-05-*
cat logs/2012-05-30.txt 
gst
git df
git diff
gst
pwd
gci -am"added logs and some other new files from the update"
gpl
gps
gpl
git br
git branch
ll _assets/
ll _3rd_party_modules/tasks_plus_v3.0.zip
cd platforms/
history | grep atrium
sudo wget http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz
gzip -dc | tar -x; rm openatrium-6.x-1.4-core.tar.gz 
ll
sudo gzip -dc | tar -x; rm openatrium-6.x-1.4-core.tar.gz 
ll
gzip -dc openatrium-6.x-1.4-core.tar.gz 
ll
gzip -dc openatrium-6.x-1.4-core.tar.gz | tar -x 
sudo gzip -dc openatrium-6.x-1.4-core.tar.gz | tar -x 
ll
sudo chown aegir:aegir openatrium-6.x-1.4-core.tar.gz 
sudo chmod g+w openatrium-6.x-1.4-core.tar.gz 
ll
sudo gzip -dc openatrium-6.x-1.4-core.tar.gz | tar -x 
sudo gzip -dc openatrium-6.x-1.4-core.tar.gz
ll
rm openatrium-6.x-1.4-core.tar.gz 
sudo rm openatrium-6.x-1.4-core.tar.gz 
ll
alias
sudo mkdir fastage-openatrium-1.4-dl-drupal-6.26; sudo chown -R  aegir:aegir fastage-openatrium-1.4-dl-drupal-6.26; sudo chmod -R g+w fastage-openatrium-1.4-dl-drupal-6.26;  cd fastage-openatrium-1.4-dl-drupal-6.26; sudo wget http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz; extract openatrium-6.x-1.4-core.tar.gz; rm openatrium-6.x-1.4-core.tar.gz; 
ll
..
ll
cd fastage-
cd fastage-openatrium-1.4-dl-drupal-6.26/
ll
cd openatrium-6.x-1.4/
ll
mv .* ../
..
sudo mv openatrium-6.x-1.4/* .
ll
ll openatrium-6.x-1.4/
cat openatrium-6.x-1.4/.htaccess 
ll
rm -R openatrium-6.x-1.4/
..
sudo chown -R aegir:aegir fastage-openatrium-1.4-dl-drupal-6.26/
sudo chmod -R g+w fastage-openatrium-1.4-dl-drupal-6.26/
cd fastage-openatrium-1.4-dl-drupal-6.26/
ll
ll sites/
...
ll
extract --help
extract
man extract
cat ~/.bashrc 
ii
..
drush dl openatrium
vim ~/.bashrc 
source ~/.bashrc
mkOAplatform(http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz, fastage-openatrium-1.4-dl-drupal-6.26b)
mkOAplatform http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz fastage-openatrium-1.4-dl-drupal-6.26b
ll
..
ll
sudo rm -R fastage-openatrium-1.4-dl-drupal-6.26*
vim ~/.bash_aliases 
source ~/.bash_aliases 
mkOAplatform
vim ~/.bash_aliases 
source ~/.bash_aliases 
mkOAplatform
vim ~/.bash_aliases 
vim ~/.bash_aliases 
mkOAplatform
vim ~/.bash_aliases 
mkOAplatform
source ~/.bash_aliases 
mkOAplatform
vim ~/.bash_aliases 
source ~/.bash_aliases 
mkOAplatform
vim ~/.bash_aliases 
source ~/.bash_aliases 
mkOAplatform
vim ~/.bashrc 
vim ~/.bashrc 
source ~/.bashrc
mkOAplatform http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz fastage-openatrium-1.4-dl-drupal-6.26
vim ~/.bash_aliases 
source ~/.bashrc
vim ~/.bash_aliases 
source ~/.bash_aliases 
vim ~/.bashrc 
source ~/.bashrc
vim ~/.bashrc 
source ~/.bashrc
vim ~/.bashrc 
source ~/.bashrc
vim ~/.bashrc 
source ~/.bashrc
vim ~/.bashrc 
source ~/.bashrc
vim ~/.bashrc 
source ~/.bashrc
vim ~/.bashrc 
source ~/.bashrc
mkOAplatform
vim ~/.bashrc 
source ~/.bashrc
mkOAplatform
mkOAplatform test
vim ~/.bashrc 
source ~/.bashrc
mkOAplatform
mkOAplatform test
vim ~/.bashrc 
source ~/.bashrc
mkOAplatform
vim ~/.bashrc 
source ~/.bashrc
mkOAplatform
mkOAplatform http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz fastage-openatrium-1.4-dl-drupal-6.26
man tar
    ls -d */
vim ~/.bashrc 
ll
..
ll
vim ~/.bashrc 
source ~/.bashrc
mkOAplatform
ll
sudo rm -R fastage-openatrium-1.4-dl-drupal-6.26/
mkOAplatform http://ftp.drupal.org/files/projects/openatrium-6.x-1.4-core.tar.gz fastage-openatrium-1.4-dl-drupal-6.26
ll
vim ~/.bashrc 
vim ~/.bashrc 
vim ~/.bashrc 
source ~/.bashrc
cat ~/.bashrc | grep function
vim ~/.bash_aliases 
vim ~/.bash_aliases 
source ~/.bash_aliases 
alias
vim ~/.bash_aliases 
source ~/.bash_aliases 
alias
vim ~/.bash_aliases 
source ~/.bash_aliases 
alias
aliases
vim ~/.bash_aliases 
alias alias=alias
source ~/.bash_aliases 
alias
exit
alias
aliases
vim ~/.bash_aliases 
source ~/.bash_aliases 
aliases
vim ~/.bash_aliases 
vim ~/.bash_aliases 
source ~/.bash_aliases 
aliases
vim ~/.bash_aliases 
source ~/.bash_aliases 
aliases
vim ~/.bash_aliases 
source ~/.bash_aliases 
aliases
vim ~/.bash_aliases 
vim ~/.bash_aliases 
source ~/.bash_aliases 
vim ~/.bash_aliases 
aliases
vim ~/.bash_aliases 
vim ~/.bash_aliases 
source ~/.bash_aliases 
vim ~/.bashrc 
source ~/.bashrc
aliases
vim ~/.bash_aliases 
ll
gst
git init
noAegir
git init
vim ~/.bash_aliases 
source ~/.bash_aliases 
vim ~/.bash_aliases 
source ~/.bash_aliases 
noAegir
git init
git add .bash*
gst
cat .gitconfig 
git add .gitconfig 
gst
ll fastage_openatrium.git 
rm -R fastage_openatrium.git 
ll
rm -R fastage-openatrium-1.4-dl-drupal-6.26/
ll
gst
