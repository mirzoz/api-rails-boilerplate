# #!/bin/bash

# # Remove if previous deployment folder exists
# rm -rf /var/www/globalwork/prev-deploy

# # Backup current deployment
# mv /var/www/globalwork/deploy /var/www/globalwork/prev-deploy

# Create new deploy folder and make nginx owner
mkdir /var/www/globalwork/deploy

chown nginx:nginx /var/www/globalwork/deploy