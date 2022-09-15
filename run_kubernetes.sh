#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=aguiljc/udacity:v1

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run aguiljc/udacity:v1 --image=$dockerpath --port=80
kubectl run udacity --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods -A

sleep 20

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity 8000:80 

#kubectl create deploy udacity --image=aguiljc/udacity:v1  
#kubectl get deploy,rs,svc,pods
#kubectl port-forward pod/udacity-bb8fcf486-gwqgn 8000:80