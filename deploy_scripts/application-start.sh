#!/bin/bash
# sudo source /root/.bash_profile
# Load environment variables
sudo source /etc/profile

# Print deployment info
DEPLOYMENT_TIME=$( date -u "+%Y/%m/%d %H:%M:%S" )
sudo echo "Deployment finished at: "$DEPLOYMENT_TIME" UTC" > /home/ubuntu/apps/globalwork/deploy/public/deploy_time.txt

# Arrange folder permissions
sudo chown -R ubuntu:ubuntu /home/ubuntu/apps/globalwork/deploy
sudo chmod -R 775 /home/ubuntu/apps/globalwork/deploy

sudo service nginx restart