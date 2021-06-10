#!/bin/bash

# Load environment variables
source /etc/profile

# Print deployment info
DEPLOYMENT_TIME=$( date -u "+%Y/%m/%d %H:%M:%S" )
echo "Deployment finished at: "$DEPLOYMENT_TIME" UTC" > /var/www/globalwork/deploy/public/deploy_time.txt

# Arrange folder permissions
chown -R nginx:nginx /var/www/globalwork/deploy
chmod -R 775 /var/www/globalwork/deploy

service nginx restart