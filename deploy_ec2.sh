#!/usr/bin/env bash
 # any future command that fails will exit the script
 set -e
 # Delete the old repo
 rm -rf /home/ec2-user/projectName

 # yum install git -y
 echo $PWD

 git clone https://sudarshan.neupane:Password@git.termn.us/URL**.git
 echo "after"
 echo $PWD
 # stop the previous pm2
 # npm install pm2 -g
 # pm2 kill


 # pm2 needs to be installed globally as we would be deleting the repo folder.
 # this needs to be done only once as a setup script.
 # starting pm2 daemon
 #pm2 status
 cd /home/ec2-user/projectName
 # cd "/home/ec2-user/saira-node-server"
 git checkout feature-CICD

 rm package-lock.json
 #install npm packages
 echo "Running npm install"
 npm install

# pm2 delete all
 #Restart the node server
 npm run start

 exit 0
