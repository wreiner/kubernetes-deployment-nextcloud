helm repo add nextcloud https://nextcloud.github.io/helm/
helm repo update

helm install --namespace nextcloud -f nextcloud-values.yml --version 2.6.5 nextcloud nextcloud/nextcloud