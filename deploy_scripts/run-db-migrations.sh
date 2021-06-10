#!/bin/bash

# Load environment variables
source /etc/profile

# Go to the deployment directory
cd /var/www/globalwork/deploy

# Run migrations in production
RAILS_ENV=production bundle exec rake db:migrate