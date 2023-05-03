helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
helm repo update nfs-subdir-external-provisioner

helm upgrade --install --values values.yaml --namespace kube-system \
    nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner
