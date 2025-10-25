# 1. First thing first, make deployment using imperative and also using --dry-run for declarative
kubectl create deployment nginx-deployment --image nginx:latest --replicas 3 --dry-run=client -o yaml > deployment.yaml

# 2. Second phase, make service nodeport for that deployment
kubectl create svc nodeport --tcp=80:80 --dry-run=client -o yaml > svc.yaml

# 3. edit those file and deploy
kubectl apply -f deployment.yaml
kubectl apply -f svc.yaml
