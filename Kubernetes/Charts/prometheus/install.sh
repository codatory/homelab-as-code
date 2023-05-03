helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update prometheus-community

helm upgrade --install --values values.yaml --namespace kube-system \
   prometheus-stack prometheus-community/kube-prometheus-stack 
