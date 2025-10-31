# 1. check the deployment with describe and -o yaml
kubectl describe deployment redis-deployment

kubectl get deployment redis-deployment -o yaml

# 2. change image and fix the configmap name
kubectl set image deployment redis-deployment redis-container=redis:alpine

---
configMap:
  - name: redis-config
    <dont change else, just name>
---

# 3. you can restart deploy or wait its automated rollout

    
