helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update nginx-stable

helm upgrade --install --values values.yaml --namespace kube-system \
    nginx-ingress nginx-stable/nginx-ingress