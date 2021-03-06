#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="mustafamhasan/mldevops:latest"

kubectl create deployment mldevopsdemo --image=$dockerpath

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run mldevopsdemo\
#    --generator=run-pod/v1\
#    --image=$dockerpath\
#    --port=80 --labels app=mldevopsdemo

# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward mldevopsdemo 8000:80
#using minikube
minikube start 
minikube service mldevopsdemo