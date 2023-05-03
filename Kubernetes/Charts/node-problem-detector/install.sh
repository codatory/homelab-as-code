helm repo add deliveryhero https://charts.deliveryhero.io/
helm repo update deliveryhero
helm upgrade --install --wait-for-jobs --wait
      --create-namespace --namespace kube-system node-problem-detector \
      deliveryhero/node-problem-detector --set metrics.enabled=true
