#!/bin/bash
# This script will update packages, install and start the Apache HTTP web server, and check its status
sudo yum update -y 
sudo yum install httpd -y
sudo systemctl start httpd 
sudo systemctl enable httpd
systemctl status httpd
