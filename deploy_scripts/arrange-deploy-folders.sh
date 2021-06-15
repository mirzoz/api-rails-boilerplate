#!/bin/bash
source /root/.bash_profile
# # Remove if previous deployment folder exists
# rm -rf /var/www/globalwork/prev-deploy

# # Backup current deployment
# mv /var/www/globalwork/deploy /var/www/globalwork/prev-deploy

# Create new deploy folder and make nginx owner
sudo mkdir /var/www/globalwork/deploy

sudo chown ubuntu:ubuntu /var/www/globalwork/deploy