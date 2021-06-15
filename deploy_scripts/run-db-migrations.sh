#!/bin/bash
# sudo source /root/.bash_profile
# Load environment variables
sudo source /etc/profile

# Go to the deployment directory
cd /home/ubuntu/apps/globalwork/deploy

# Run migrations in production
RAILS_ENV=production bundle exec rake db:migrate