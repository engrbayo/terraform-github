#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
sudo systemctl start nginx

# Create an HTML file with the desired content
echo "Shefiu Yusuf!" > /var/www/html/index.html
