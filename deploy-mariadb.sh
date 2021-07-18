helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install -f mariadb-values.yml mariadb bitnami/mariadb