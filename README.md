# Provision minikube in your Linux-based system (WSL too)!
In this project I provision a local kubernetes cluster with 3 nodes with one command (See 1.).
It is also possible to configure how many nodes the cluster will have, based on your needs (See 2.). 
<br>
<br>
<br>

# 1- If you want <b>Maximum automation</b> - Just run this
```
sh provision_minikube_3_nodes.sh
```
And then go get a coffee because this takes a while. This provisions 3 nodes: one control-plane and two workers.

<br>
<br>    
<br>

# 2- If you want to configure and enjoy the process
Pre-requirements: 
- Install ansible
```bash
sudo apt-get update
sudo apt install ansible
```
## How to set up a minikube cluster
``` bash
sudo ansible-playbook provision_minikube.yml -i inventory
``` 
## Then run this to start it up:

``` bash
sh start_minikube.sh
``` 
## Add as many nodes as you'd like

``` bash
sh provision_more_nodes.sh 2 #Change to desired number of workers
``` 
<br>
<br>


# 3- Clean up
```bash
minikube delete --all
```