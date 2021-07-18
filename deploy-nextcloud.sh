helm repo add nextcloud https://nextcloud.github.io/helm/
helm repo update

helm install -f nextcloud-values.yml nextcloud nextcloud/nextcloud