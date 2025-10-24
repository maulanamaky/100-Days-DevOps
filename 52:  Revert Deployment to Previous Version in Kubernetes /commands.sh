# 1. Check history revision deployment
kubectl rollout history deployment nginx-deployment

# 2. Undo version deployment to make version before this
kubectl rollout undo deployment nginx-deployment --to-revision=1
