#!/bin/bash
# Install Docker and Git on ec2 instance
sudo apt update
sudo apt install docker.io git docker-compose-v2 -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ubuntu && newgrp docker