# 1. Make pod imperative and using --dry-run and edit
kubectl run webserver --image nginx:latest --dry-run=client -o yaml > pod.yaml

vi pod.yaml

# 2. Deplu
kubectl apply -f pod.yaml
