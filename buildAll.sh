#!/bin/bash
echo "Realizando build de todas imagens para o projeto Fundamentals 1"
version=${version:-latest}
podman build -t quay.io/gscheffe/dio-backend:$version backend/.
podman build -t quay.io/gscheffe/dio-db:$version db/.
