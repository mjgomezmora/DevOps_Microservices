#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=devopsmicroservices .


# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
sudo /home/ec2-user/.devops/bin/python3 app.py
docker run -it devopsmicroservices bash
