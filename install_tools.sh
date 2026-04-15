#!/bin/bash
set -e

apt-get update
apt-get install -y --no-install-recommends \
    git \
    curl \
    ca-certificates \
    gnupg \
    lsb-release

KUBECTL_VERSION="v1.28.15"
curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm -f kubectl

apt-get clean
rm -rf /var/lib/apt/lists/*
