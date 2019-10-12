
#!/bin/bash

# Update the Repository
yum update -y

# Install Utility Softwares 
yum install wget* curl* vim* unzip* -y

# Install WebServer i.e. Apache httpd 
yum install http* --skip-broken -y 

# Deploy a WebSite 
echo "<html><head><title>Keshav Kummari</title></head><body><h1>Welcome to AWS World by Keshav Kummari</h1></body></html>" >> /var/www/html/index.html 

# Start the WebServer
service httpd start 

# Enable the WebServer at Boot level 
chkconfig httpd on 

