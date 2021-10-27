#!/bin/bash 

#k8s installion script for Ubuntu
#Creater Marcus Johnson 10/26/21

apt update 

apt install docker.io -y 

systemctl start docker;systemclt enable docker

apt-get update && sudo apt-get install -y apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update

apt-get install -y kubelet kubeadm kubectl

swapoff -a

echo "run kubeadm init for master" 




