helm repo add aqua https://aquasecurity.github.io/helm-charts/
helm repo update aqua

helm upgrade --install --values values.yaml --namespace starboard-system --create-namespace \
    starboard-operator aqua/starboard-operator