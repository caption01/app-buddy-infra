#!/bin/bash

# update yum PMG
sudo yum update -y

# Add the Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import a key file from Jenkins-CI to enable installation
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade

# Install Java
sudo dnf install java-11-amazon-corretto -y

# Install Jenkins
sudo yum install jenkins -y

### after successful installation

# 1. enable jenkins service
# sudo systemctl enable jenkins

# 2. start jenkins service
# sudo systemctl start jenkins

# 3. checking jenkins service
# sudo systemctl status jenkins

# 4. get initial password
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword