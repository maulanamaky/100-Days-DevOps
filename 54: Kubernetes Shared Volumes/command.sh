# 1. Create pod imperative and use --dry-run
kubectl run volume-shared-nautilus --image fedora:latest --dry-run=client -o yaml > pod.yaml

# 2. edit and deploy
vi pod.yaml

kubectl apply -f pod.yaml

# 3. Access the container 1
kubectl exec -it volume-shared-nautilus -c volume-container-nautilus-1 -- touch /tmp/media/media.txt

# 4. Access the container 2 , just make sure their using same volume
kubectl exec -it volume-shared-nautilus -c volume-container-nautilus-2 -- ls /tmp/demo
