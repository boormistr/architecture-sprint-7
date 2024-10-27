#!/bin/bash

kubectl create rolebinding view-only-binding --role=view-only --user=analyst-user --namespace=default
kubectl create clusterrolebinding devops-admin-binding --clusterrole=cluster-admin --user=devops-user
kubectl create rolebinding secret-access-binding --role=secret-access --user=devops-user --namespace=default
