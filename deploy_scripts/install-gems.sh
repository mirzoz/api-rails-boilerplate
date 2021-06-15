#!/bin/bash

# Go to the deploy directory
cd /var/www/globalwork/deploy

# # Get temporaray credentials for AWS CodeCommit
# # - Remember that the instance must have access rights to the CodeCommit repositories in Gemfile.
# git config --global credential.helper '!aws codecommit credential-helper $@'
# git config --global credential.UseHttpPath true

# Install gems using bundler
# - Bundle location: /var/www/globalwork/shared/bundle
# - Binary location: /var/www/globalwork/shared/bin
# - Without development and test gems
# - Using gemfile in current directory
# - Also quietly. No need to generate all logs.
RAILS_ENV=production bundle install --binstubs /var/www/globalwork/shared/bin --gemfile ./Gemfile --path /var/www/globalwork/shared/bundle --without development test --deploy --quiet