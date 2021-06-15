#!/bin/bash
source /root/.bash_profile
# Go to the deployment directory
cd /var/www/globalwork/deploy

# Load environment variables
sudo source /etc/profile

# Run asset precompilation
# - No need to run assets:clobber because this is a new folder. There should be none. We compile assets from the beginning in all deployments.
RAILS_ENV=production bundle exec rake assets:precompile