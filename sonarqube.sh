#!/bin/bash

# Update the package index
sudo apt update
sudo apt install docker.io -y
sudo docker run -d -p 8081:8081 sonarqube:lts-community
