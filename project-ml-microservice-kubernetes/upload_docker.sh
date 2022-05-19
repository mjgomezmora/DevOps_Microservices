#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=devopsmicroservices


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 491808826414.dkr.ecr.us-east-1.amazonaws.com
docker tag devopsmicroservices:latest 491808826414.dkr.ecr.us-east-1.amazonaws.com/devopsmicroservices:latest

# Step 3:
# Push image to a docker repository
docker push 491808826414.dkr.ecr.us-east-1.amazonaws.com/devopsmicroservices:latest