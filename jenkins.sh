#!/bin/bash

# Update the package index
sudo apt update

# Install Java (Jenkins requires Java 11 or newer)
sudo apt install -y openjdk-11-jdk

# Add the Jenkins Debian repository
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
sudo apt install docker.io -y
sudo chmod 666 /var/run/docker.sock
