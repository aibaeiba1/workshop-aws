#!/bin/bash
sudo yum -y update
sudo yum install -y amazon-linux-extras
sudo yum install nginx
sudo mkdir -p /usr/share/nginx/html/web1
sudo mkdir -p /usr/share/nginx/html/web2
sudo echo "WEB1" | sudo tee /usr/share/nginx/html/web1/index.html
sudo echo "WEB2" | sudo tee /usr/share/nginx/html/web2/index.html
sudo systemctl stop nginx
sudo systemctl start nginx
