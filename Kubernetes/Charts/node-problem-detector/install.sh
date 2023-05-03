helm repo add deliveryhero https://charts.deliveryhero.io/
helm repo update deliveryhero

helm upgrade --install --values values.yaml --namespace kube-system \
      node-problem-detector deliveryhero/node-problem-detector
