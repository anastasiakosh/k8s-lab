#!/usr/bin/env bash
set -euo pipefail

echo "[1/3] Застосування маніфестів Kubernetes..."
kubectl apply -f k8s/cluster.yaml

echo "[2/3] Очікування розгортання Deployment..."
kubectl rollout status deployment/web-app
kubectl rollout status deployment/node-reader

echo "[3/3] Поточний стан ресурсів кластера:"
kubectl get pods,deployments,replicasets,svc,ingress,pv,pvc -o wide
