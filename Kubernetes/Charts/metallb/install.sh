helm repo add metallb https://metallb.github.io/metallb
helm repo update metallb
helm upgrade --install --create-namespace --namespace metallb-system metallb metallb/metallb
kubectl apply -f config.yml
