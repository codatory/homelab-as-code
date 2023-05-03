helm repo add descheduler https://kubernetes-sigs.github.io/descheduler/
helm repo update descheduler

helm upgrade --install --wait-for-jobs --wait --values values.yaml \
            --create-namespace --namespace kube-system descheduler/descheduler