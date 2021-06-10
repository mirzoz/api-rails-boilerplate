#!/bin/bash

# Load environment variables
sudo source /etc/profile

# Go to the deployment directory
sudo cd /var/www/globalwork/deploy

# Run migrations in production
RAILS_ENV=production bundle exec rake db:migrate