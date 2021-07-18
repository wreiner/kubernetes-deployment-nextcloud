helm repo add nextcloud https://nextcloud.github.io/helm/
helm repo update

helm install --namespace nextcloud -f nextcloud-values.yml nextcloud nextcloud/nextcloud