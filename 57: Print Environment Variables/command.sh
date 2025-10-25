# 1. Mkae run pod imperative and use --dry-run for declarative
kubectl run print-envars-greeting --image bash --dry-run=client -o yaml > pod.yaml

vi pod.yaml

# 2. deploy and watch logs
kubectl apply -f pod.yaml

kubectl logs -f print-envars-greeting
