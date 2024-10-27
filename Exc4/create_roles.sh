#!/bin/bash

kubectl create role view-only --verb=get,list,watch --resource=pods,services,deployments,namespaces
kubectl create clusterrolebinding cluster-admin-binding --clusterrole=cluster-admin --group=cluster-admin
kubectl create role limited-admin --verb=get,list,watch,create,update,delete --resource=pods,services,deployments
kubectl create role secret-access --verb=get --resource=secrets
kubectl create role tenant-admin --verb=get,list,watch,create,update,delete --resource=pods,services,deployments \
--namespace=tenant-namespace
