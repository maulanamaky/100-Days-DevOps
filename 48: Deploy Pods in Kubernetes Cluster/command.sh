# 1. Run and also make pod
kubectl run pod_httpd --image httpd:lates

# 2. Add label app: httpd-app for that pod
kubectl label pod pod_httpd app=httpd-app

# 3. Change name container to httpd_container
# We cant instant edit for pod, copy blueprint and now we can edit for change container name
kubectl get pod pod_httpd -o yaml > q1.yaml

vi q1.yaml

# Deploy again 
kubectl replace -f q1.yaml --force
