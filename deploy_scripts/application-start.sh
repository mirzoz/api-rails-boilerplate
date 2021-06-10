#!/bin/bash

# Load environment variables
sudo source /etc/profile

# Print deployment info
DEPLOYMENT_TIME=$( date -u "+%Y/%m/%d %H:%M:%S" )
sudo echo "Deployment finished at: "$DEPLOYMENT_TIME" UTC" > /var/www/globalwork/deploy/public/deploy_time.txt

# Arrange folder permissions
sudo chown -R nginx:nginx /var/www/globalwork/deploy
sudo chmod -R 775 /var/www/globalwork/deploy

sudo service nginx restart