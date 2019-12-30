# Overall trivia
Service <- Deployment <- ReplicaSet <- Pod <- Container  
Service is for exposing an app service at cluster ip level (can use external ip for accessing outside cluster), is backed by deployment, is backed by replicaset(that tells how many pods), is backed by pod, in which containers get deployed

# Deploy app

```
kubectl version
kubectl get nodes
kubectl apply -f nginx-deployment.yaml
kubectl get deployments -o wide
kubectl get deployment <deployment_name>
```  
# Expose service to outside cluster
```
kubectl apply -f nginx-service.yaml
kubectl get services -o wide
```
- curl http://<clusterip:8082> from kubemaster
- curl http://192.168.99.100:30000 from host machine

# Export manifests
- kubectl get service nginx -o yaml
- kubectl get service nginx -o json
- kubectl get service nginx -o yaml --export  > service-nginx.yaml (cluster info is stripped)

# explain
- kubectl explain service | more
- kubectl explain service.spec | more
- kubectl explain service.spec.ports | more

# Delete
- kubectl delete service nginx
- kubectl delete deployment nginx