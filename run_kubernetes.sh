
#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=carlograss92/ml-microserv

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-micro --image=carlograss92/ml-microserv --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-micro 8000:80
