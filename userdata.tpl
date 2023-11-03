#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx &&
sudo systemctl start nginx &&
sudo systemctl enable nginx

# Create an HTML file with the desired content
echo "My name is Shefiu Yusuf!" | sudo tee /var/www/html/index.html
