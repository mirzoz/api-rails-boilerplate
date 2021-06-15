#!/bin/bash
# sudo source /root/.bash_profile
# Go to the deploy directory
cd /home/ubuntu/apps/globalwork/deploy

# Remove if there is an existing database configuration
# sudo rm -f config/database.yml

# Link the database configuration to shared db config file
# sudo ln -s /var/www/globalwork/shared/config/database.yml config/database.yml