helm repo add postgres-operator-charts https://opensource.zalando.com/postgres-operator/charts/postgres-operator
helm repo update postgres-operator-charts

helm upgrade --install --namespace postgres-operator --create-namespace \
   postgres-operator postgres-operator-charts/postgres-operator

