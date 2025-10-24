# 1. Check pod yaml
kubectl get pod nginx-phpfpm -o yaml

# If you notice, volume shared for 2 container its nginx-phpfpm and nginx-container is different. fix that. Follow root path nginx in configmap
# 2. copy file pod
kubectl get pod nginx-phpfpm -o yaml > nginx-phpfpm.yaml
vi nginx-phpfpm.yaml

# 3. deploy again
kubectl replace -f nginx-phpfpm --force

# 4. copy file o local to container nginx-container
kubectl cp ~/index.php nginx-phpfpm:/var/www/html -c nginx-container
