# Jenkins Study

Kubernetes 환경에서 Jenkins를 배포하고 GitHub 연동 및 CI 작업을 수행하기 위한 커스텀 Jenkins 이미지입니다.

## Overview
이 프로젝트는 Jenkins 기본 이미지에 Git, Curl, kubectl을 추가하여
Kubernetes 클러스터 환경에서 사용할 수 있도록 구성한 Jenkins 이미지입니다.

## Included Tools
- Jenkins LTS
- Git
- Curl
- kubectl v1.28.15

## Purpose
- Kubernetes 환경에서 Jenkins 배포
- GitHub 저장소 연동
- Jenkins Pipeline 기반 작업 수행
- 추후 Kubernetes 배포 자동화 확장 가능

## Files
- `Dockerfile` : Jenkins 커스텀 이미지 빌드 파일
- `install_tools.sh` : Git, Curl, kubectl 설치 스크립트

## Build
```bash
docker build -t <dockerhub-id>/jenkins:k8s-1.28.15 .
