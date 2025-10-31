# 1. make generic file
kubectl create secret generic official --from-file=/opt/official.txt

# 2. Make pod
# 3. Chek pod with secret
kubectl exec -it secret-datacenter -- cat /opt/apps/official.txt
