#!/user/bin/env bash

kubectl config set-cluster microk8s --server=https://127.0.0.1:16443/ --certificate-authority=/var/snap/microk8s/current/certs/ca.crt
kubectl config set-credentials microk8s-admin --token=$(microk8s kubectl config view --raw -o 'jsonpath={.users[0].user.token}')
kubectl config set-context microk8s --cluster=microk8s --namespace=default --user=microk8s-admin