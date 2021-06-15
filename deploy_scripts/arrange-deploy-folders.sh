#!/bin/bash
# sudo source /root/.bash_profile
# # Remove if previous deployment folder exists
# rm -rf /var/www/globalwork/prev-deploy

# # Backup current deployment
# mv /var/www/globalwork/deploy /var/www/globalwork/prev-deploy

# Create new deploy folder and make nginx owner
sudo mkdir /home/ubuntu/apps/globalwork/deploy

sudo chown ubuntu:ubuntu /home/ubuntu/apps/globalwork/deploy