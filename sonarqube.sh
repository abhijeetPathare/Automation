#!/bin/bash

# Update the package index
sudo apt update
sudo apt install docker.io -y
sudo docker run -d -p 9000:9000 sonarqube:lts-community
