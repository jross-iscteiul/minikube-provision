#!/bin/bash
sudo apt-get update
sudo apt install ansible
sudo ansible-playbook provision_minikube.yml -i inventory
sh start_minikube.sh
sh provision_more_nodes.sh 2