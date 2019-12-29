# Purpose

[Canonical Documentation](https://kubernetes.io/docs/reference/kubectl/overview/)  

[Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)  

```
kubectl [command] [TYPE] [NAME] [flags]
```

- kubectl is the primary cli tool to control kubernetes cluster as a cluster admin
    - [Operations](https://kubernetes.io/docs/reference/kubectl/overview/#operations): What you want to do
    - [Resources](https://kubernetes.io/docs/reference/kubectl/overview/#resource-types): Operate on what 
    - [Output](https://kubernetes.io/docs/reference/kubectl/overview/#output-options): Format of output
    - kubectl -h (groups various commands)
    - kubectl get -h (all commands related to get)
    - kubectl describe -h (all describe commands)
    - mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config (To make kubectl work for your non-root user)

# Docker Client vs. kubectl
If you are from docker world and comfortable, use [docker-cli-vs-kubectl](https://kubernetes.io/docs/reference/kubectl/docker-cli-to-kubectl/)
