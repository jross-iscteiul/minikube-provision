#!/bin/bash
minikube start --driver=docker --cni calico
kubectl get nodes