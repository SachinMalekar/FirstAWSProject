Automated EC2 Setup with Shell Script
📌 Project Overview
This project demonstrates how to launch an AWS EC2 instance using the AWS Management Console and automate the setup of an Apache web server using a shell script. The script is executed via User Data, allowing the web server to be installed and configured automatically on instance startup.

🚀 Features
Launch an Amazon Linux 2 EC2 instance.
Automate Apache installation using a shell script.
Serve a simple web page on HTTP (Port 80).
Connect to the instance using SSH.
🛠️ Setup Instructions
Launch an EC2 instance from the AWS Console.
Configure security groups to allow SSH (22) and HTTP (80).
Add the shell script in User Data during instance creation.
Access the instance via SSH and verify Apache installation.
Open the public IP in a browser to see the web page.
📄 Shell Script (User Data)
sh
Copy
Edit
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Welcome to My EC2 Instance!</h1>" | sudo tee /var/www/html/index.html
🌐 Verify Web Server
After launching the instance, open:

cpp
Copy
Edit
http://<Public-IP>
You should see:
"Welcome to My EC2 Instance!"

