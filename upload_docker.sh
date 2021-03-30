#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=carlograss92/ml-microserv

# Step 2:  
# Authenticate & tag
tag=latest
echo "Docker ID and Image: $dockerpath"
docker login -u carlograss92
docker tag ml-microserv $dockerpath:$tag
# Step 3:
docker push $dockerpath
