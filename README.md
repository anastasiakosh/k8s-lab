
Репозиторій містить конфігурацію для автоматизованого розгортання клієнт-серверного додатку в Kubernetes (Minikube).

## Реалізовані компоненти
- **Deployment `web-app` (2 репліки):** Multi-container Pod (`nginx:alpine` + `busybox:1.36` sidecar) зі спільним `emptyDir` для збору логів.
- **Deployment `node-reader`:** Окремий под, що зчитує дані з `hostPath` ноди (`/mnt/shared-node`), записані основним додатком.
- **Зберігання та конфігурація:** `PersistentVolume`, `PersistentVolumeClaim`, `ConfigMap`, `Secret`.
- **Мережа:** `ClusterIP`, `NodePort` та `Ingress`.
- **Автоматизація:** Скрипт `deploy.sh` та CI/CD воркфлоу у `.github/workflows/deploy.yml`.
