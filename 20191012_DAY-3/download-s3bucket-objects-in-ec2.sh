
#!/bin/bash

# Update the Repository
yum update -y

# Install Utility Softwares 
yum install wget* curl* vim* unzip* -y

# Install WebServer i.e. Apache httpd 
yum install http* --skip-broken -y 

# Change the Folder or Directory Path 
cd /var/www/html/ 

# Download S3 bucket content & Deploy a Website
aws s3 cp s3://dev.ckk.cloud/index.html index.html 

# Start the WebServer
service httpd start 

# Enable the WebServer at Boot level 
chkconfig httpd on 

