echo "Realizando create/update de todas aplicações no cluster K8s para o projeto Fundamentals 1"

echo "Services..."
kubectl apply -f services.yaml

echo "Deployments"
read -p "Persistent? (Y/N): " persistent
if [[ $persistent == [yY] || $persistent == [yY][eE][sS] ]]; then
  kubectl apply -f deployments-persistent.yaml
else
  kubectl apply -f deployments-ephemeral.yaml
fi
