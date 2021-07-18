kubectl apply -f namespace.yml
kubectl config set-context --current --namespace=nextcloud

kubectl apply -f mariadb-pv.yml -f mariadb-pvc.yml
kubectl apply -f nextcloud-pv.yml -f nextcloud-pvc.yml

bash deploy-mariadb.sh
deploy-nextcloud.sh