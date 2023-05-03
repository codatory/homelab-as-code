helm repo add descheduler https://kubernetes-sigs.github.io/descheduler/
helm repo update descheduler

helm upgrade --install --values values.yaml --namespace kube-system \
    descheduler/descheduler