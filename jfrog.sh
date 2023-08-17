#!/bin/bash

# Install Docker on Amazon Linux 2
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $(whoami)

# Run JFrog Artifactory Docker container with volumes and restart policy
sudo docker run -d \
  --name jfrog-artifactory \
  --restart unless-stopped \
  -p 8081:8081 -p 8082:8082 \
  docker.bintray.io/jfrog/artifactory-pro:v1.0.38
