#!/bin/bash
# sudo source /root/.bash_profile
# Go to the deployment directory
cd /home/ubuntu/apps/globalwork/deploy

# Load environment variables
sudo source /etc/profile

# Run asset precompilation
# - No need to run assets:clobber because this is a new folder. There should be none. We compile assets from the beginning in all deployments.
RAILS_ENV=production bundle exec rake assets:precompile