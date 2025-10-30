# Deploy grafana at deployment and nodeport 32000

# 1. Go to the server
# 2. Make deployment
kubectl create deployment grafana-deployment-xfusion --image grafana/grafana/nightly --replicas 2 --dry-run=client -o yaml > deploy.yaml

# edit configuration deploy.yaml
sudo vi deploy.yaml

# 3. Make service
kubectl create service nodeport grafana --tcp=32000 --dry-run=client -o yaml > svc.yaml

# edit configuration svc.yaml
sudo vi svc.yaml

# 4. Deploy each manifest
kubectl apply -f deploy.yaml
kubectl apply -f svc.yaml
