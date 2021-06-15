#!/bin/bash
source /root/.bash_profile
# Load environment variables
sudo source /etc/profile

# Go to the deployment directory
cd /var/www/globalwork/deploy

# Run migrations in production
RAILS_ENV=production bundle exec rake db:migrate