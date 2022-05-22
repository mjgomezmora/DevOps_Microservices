#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mjgmora/devopsmicroservices:latest

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deploy devopsmicroservices-app --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/devopsmicroservices-app-6994b64c66-g2szc --address 0.0.0.0 8080:80

