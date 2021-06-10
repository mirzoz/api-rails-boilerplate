#!/bin/bash

# Go to the deploy directory
sudo cd /var/www/globalwork/deploy

# Remove if there is an existing database configuration
sudo rm -f config/database.yml

# Link the database configuration to shared db config file
# sudo ln -s /var/www/globalwork/shared/config/database.yml config/database.yml