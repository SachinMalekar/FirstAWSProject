#!bin/bash
# This script is installation of Apache server
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd -y
sudo systemctl enable httpd
echo "<h1> Welcome to my EC2 Instance!</h1>" | sudo tee /var/www/html/index.html

