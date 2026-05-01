#!/bin/bash
# Install Docker and Git on ec2 instance
sudo apt update
sudo apt install docker.io git -y
sudo systemctl start docker