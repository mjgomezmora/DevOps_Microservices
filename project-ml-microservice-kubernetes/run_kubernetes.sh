#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=491808826414.dkr.ecr.us-east-1.amazonaws.com/devopsmicroservices:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run devopsmicroservices-app --image=$dockerpath --port=80 --labels app=devopsmicroservices-app

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward devopsmicroservices-app 80:80