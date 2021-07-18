helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install --namespace nextcloud -f mariadb-values.yml --version 9.3.17 mariadb bitnami/mariadb