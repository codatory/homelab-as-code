helm repo add gitea https://dl.gitea.io/charts/
helm repo update gitea

helm upgrade --install --values values.yaml --namespace gitea --create-namespace \
   gitea gitea/gitea

kubectl apply -f database.yaml --namespace gitea
kubectl apply -f secrets.yaml --namespace gitea
