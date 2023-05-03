helm repo add metallb https://metallb.github.io/metallb
helm repo update metallb

helm upgrade --install --namespace kube-system \
    metallb metallb/metallb

kubectl apply -f config.yaml
