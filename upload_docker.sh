#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=ojoimmanuel/prediction_app:latest

# Step 2:  
# Authenticate & tag
docker login --username ojoimmanuel
docker image tag prediction_app $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath