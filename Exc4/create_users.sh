#!/bin/bash

mkdir -p /etc/kubernetes/pki/users

openssl genrsa -out /etc/kubernetes/pki/users/analyst-user.key 2048
openssl req -new -key /etc/kubernetes/pki/users/analyst-user.key -out /etc/kubernetes/pki/users/analyst-user.csr -subj "/CN=analyst-user/O=view-only"
openssl x509 -req -in /etc/kubernetes/pki/users/analyst-user.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out /etc/kubernetes/pki/users/analyst-user.crt -days 365

openssl genrsa -out /etc/kubernetes/pki/users/devops-user.key 2048
openssl req -new -key /etc/kubernetes/pki/users/devops-user.key -out /etc/kubernetes/pki/users/devops-user.csr -subj "/CN=devops-user/O=cluster-admin"
openssl x509 -req -in /etc/kubernetes/pki/users/devops-user.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out /etc/kubernetes/pki/users/devops-user.crt -days 365

