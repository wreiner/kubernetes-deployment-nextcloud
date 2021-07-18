# Kubernetes Deployment: Nextcloud

Deploy Nextcloud with MariaDB to Kubernetes using Helm.

## Warning

This is a dev deployment with weak passwords.

## Persistent Volumes

This deployment uses the following local persistent volumes

```
# Name: data-mariadb-0
# Size: 1G

mkdir -p /var/lib/k8s/volumes/nextcloud-mariadb-data-pv
chown -R 1001:root /var/lib/k8s/volumes/nextcloud-mariadb-data-pv
```

```
# Name: nextcloud-data-pv
# Size: 200G

mkdir -p /var/lib/k8s/volumes/nextcloud-data-pv
chown -R www-data:root /var/lib/k8s/volumes/nextcloud-data-pv
```