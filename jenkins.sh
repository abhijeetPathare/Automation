#!/bin/bash

# Update the package index
sudo apt update

# Install Java (Jenkins requires Java 11 or newer)
sudo apt install -y openjdk-11-jdk

# Add the Jenkins Debian repository
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update the package index with the new repository
sudo apt update

# Install Jenkins
sudo apt install -y jenkins

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins to start at boot
sudo systemctl enable jenkins

# Output the initial admin password
echo "Jenkins installed successfully. The initial admin password is:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
