helm repo add kubereboot https://kubereboot.github.io/charts
helm repo update kubereboot

helm upgrade --install --values values.yaml --namespace kube-system \
    kubereboot kubereboot/kured
