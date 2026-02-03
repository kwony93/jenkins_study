# Custom Jenkins on Kubernetes
# 서버/인프라 공부 시작 10/20~
# 2026-02-03 - jenkins k8s환경에서 배포 test

## 개요
쿠버네티스 환경에서 도커 이미지 빌드 및 배포가 가능한 커스텀 젠킨스 이미지 구축 프로젝트

## 해결한 주요 이슈 (Troubleshooting)
Docker in Docker (DooD) 권한 문제
   - 젠킨스 파드 내부에서 `docker` 명령어를 쓰기 위해 호스트의 `docker.sock`을 마운트함.
   - 호스트와 컨테이너 간의 GID 불일치 문제를 해결하기 위해 빌드 시점에 `HOST_GID`를 변수로 받아 그룹 권한을 동적으로 설정함. 

## 주요 기술 스택
- Docker, Kubernetes, Jenkins, Shell Script (Bash)

