#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=mreggert96/udacity-project-submission
app_name=udacity-project-submission

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $app_name --image=$dockerpath --port=80 --labels app=$app_name
# Wait for pod to be ready
echo "Waiting for pod to get into status ready..."
kubectl wait --for=condition=ready pod -l app=$app_name 
echo "Pod is ready!"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $app_name 8000:80