BEGIN

nano kubeconfig.yaml
export KUBECONFIG=kubeconfig.yaml
kubectl get nodes
 kubectl cluster-info
kubectl run PODNAME --image=ubuntu:18.04 -- sleep infinity
kubectl get pods
kubectl describe pods
kubectl delete pods PODNAME

SSH-TO_POD ;
kubectl exec --stdin --tty PODNAME -- /bin/bash

END
