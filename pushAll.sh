echo "Realizando push de todas imagens para o projeto Fundamentals 1"
version=${version:-latest}
podman push quay.io/gscheffe/dio-backend:$version
podman push quay.io/gscheffe/dio-db:$version
