# 1. Create Pod using imperative
kubectl run http-pod --image httpd:latest --dry-run=client -o yaml > httpd-pod.yaml

# 2. Edit httpd-pod.yaml to add requests and limits
vi httpd-pod.yaml

# 3. Apply httpd-pod.yaml
kubectl apply -f httpd-pod.yaml

# Make sure pod is running
