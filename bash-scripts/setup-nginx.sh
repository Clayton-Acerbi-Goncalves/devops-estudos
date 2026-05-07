#!/bin/bash

# Script to install and configure Nginx
# Author: Clayton Acerbi Goncalves
# Date : 2026

echo "Starting Nginx installation..."


# Update system packges

sudo apt update -y

# Install Nginx
sudo apt install nginx -y


# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx


# Create custom web page
sudo bash -c 'cat > /var/www/html/index.nginx-debian.html << EOF
<!DOCTYPE html>
<html>
<head>
   <title>Clayton Acerbi - DevOps Engineer</title>
</head>
<body>
   <h1>Hello World!</h1>
   <p>My first AWS EC2 server - eu-west-2 London</p>
   <p>Deployed by: Clayton Acerbi Goncalves</p>
   <p>Automated with Bash script</p>
</body>
</html>

EOF'

echo "Nginx installed and configured sucessfully!"
echo "Access your server on: http://YOUR-EC2-IP"
