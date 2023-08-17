#!/bin/bash

# Install Docker on Amazon Linux 2
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
sudo mkdir -p /jfrog/artifactory
sudo chown -R 1030:1030 /jfrog/
# Run JFrog Artifactory Docker container with volumes and restart policy
#pull jfrog docker image
sudo docker pull docker.bintray.io/jfrog/artifactory-oss:latest

sudo docker run --name artifactory -d -p 8081:8081 -p 8082:8082 \
  --restart unless-stopped \
  -v /jfrog/artifactory:/var/opt/jfrog/artifactory \
 docker.bintray.io/jfrog/artifactory-oss:latest
