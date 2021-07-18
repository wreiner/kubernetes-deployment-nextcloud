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

## Upgrading MariaDB

```
To upgrade this helm chart:

  1. Obtain the password as described on the 'Administrator credentials' section and set the 'auth.rootPassword' parameter as shown below:

      ROOT_PASSWORD=$(kubectl get secret --namespace nextcloud nextcloud-mariadb -o jsonpath="{.data.mariadb-root-password}" | base64 --decode)
      helm upgrade --namespace nextcloud mariadb bitnami/mariadb --set auth.rootPassword=$ROOT_PASSWORD
```