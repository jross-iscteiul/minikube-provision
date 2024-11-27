#!/bin/bash

# Number of worker nodes to add to the Minikube cluster
MINIKUBE_NODES=$1
if [ -n MINIKUBE_NODES ]; then echo "Adding $MINIKUBE_NODES workers to your cluster"; else echo "No input was defined, going with the default number of worker nodes: 2"; MINIKUBE_NODES=2; fi 

# Confirm minikube is started; if not, start it
minikube start --driver=docker

# Add worker nodes
for i in $(seq 1 $((MINIKUBE_NODES))); do
    echo "Adding worker..."
    minikube node add 
done


# Verify
echo "Kubernetes Nodes:"
kubectl get nodes
