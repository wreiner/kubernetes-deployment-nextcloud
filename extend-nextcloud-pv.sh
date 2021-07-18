# scale down to 0 replicas
kubectl scale --replicas=0 -n nextcloud deployment.apps/nextcloud

# extend pv and pvc
kubectl delete -f nextcloud-pvc.yml
kubectl apply -f nextcloud-pv.yml
kubectl apply -f nextcloud-pvc.yml

# scale back up
kubectl scale --replicas=1 -n nextcloud deployment.apps/nextcloud