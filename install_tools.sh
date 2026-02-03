#!/bin/bash
#docker group add
DOCKER_GID=$1

if [ -n "$DOCKER_GID" ]; then
    groupadd -g "$DOCKER_GID" docker_host 
    usermod -aG docker_host jenkins 
fi

#1. package update & Install to need util
apt-get update && apt-get install -y \
	curl git ca-certificates gnupg lsb-release docker.io

#2. Kubernetes Binary install
K8S_VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt)
curl -LO "https://dl.k8s.io/release/${K8S_VERSION}/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl /usr/local/bin/

#3. 정리작업
rm -rf /var/lib/apt/lists/*
