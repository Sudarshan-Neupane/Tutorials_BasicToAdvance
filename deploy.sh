#!/bin/bash

# any future command that fails will exit the script
set -e

# Lets write the public key of our aws instance
eval "$(ssh-agent -s)"
echo "$EC2_SSH_CICD_TEST" | tr -d '\r' | ssh-add - > /dev/null
# ** Alternative approach
# ** End of alternative approach
mkdir -p ~/.ssh
touch ~/.ssh/config
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" >> ~/.ssh/config


echo $EC2_SSH_CICD_TEST >> ssh_key.pem
chmod 400 ssh_key.pem
ls -lrt
echo "pem file read"
cat ssh_key.pem

#DEPLOY_SERVERS='ec2-54-201-234-119.us-west-2.compute.amazonaws.com'
echo "Deploy project on server 34.218.255.59"
#ssh ec2-user@34.218.255.59
ssh  -t -t -i "$EC2_SSH_CICD_TEST" ec2-user@ec2-34-21.***.com 'bash' < ./deploy/deploy_ec2.sh
