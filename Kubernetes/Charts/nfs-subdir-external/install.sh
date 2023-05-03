helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
helm repo update nfs-subdir-external-provisioner
helm upgrade --install --create-namespace --namespace kube-system \
    nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=10.8.0.3 \
    --set nfs.path=/KuberNFS \
    --set storageClass.defaultClass=true \
    --set storageClass.onDelete=delete
