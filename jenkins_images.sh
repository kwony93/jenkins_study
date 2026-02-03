#!/bin/bash
# 호스트의 docker.sock GID를 자동으로 찾아 빌드 인자로 넣는다. 
docker build --build-arg HOST_GID=$(stat -c '%g' /var/run/docker.sock) -t hklee2748/jenkins:v1.1 .
