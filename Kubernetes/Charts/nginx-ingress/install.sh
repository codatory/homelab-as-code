helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update nginx-stable

helm upgrade --install --wait-for-jobs --wait --values values.yaml \
            --create-namespace --namespace ingress nginx-stable/nginx-ingress