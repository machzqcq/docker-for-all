# FIRST 3 COMMANDS TO BE EXECUTED ON KUBEMASTER
#If you didn't keep the output, on the master, you can get the token.
# kubeadm token list

#If you need to generate a new token, perhaps the old one timed out/expired.
# kubeadm token create

#On the master, you can find the ca cert hash.
# openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'

#Using the master (API Server) IP address or name, the token and the cert has, let's join this Node to our cluster.
# REPLACE token and discovery-token-ca-cert-hash with your values discovered on KUBEMASTER
sudo kubeadm join 192.168.99.100:6443 \
    --token lbwaqp.8gxxwtyg60dpr3tr \
    --discovery-token-ca-cert-hash sha256:de225e25945b7e8cc0fbb4cff34331683d66a684e30563b995cb53d3e2fb0a82

#Back on master, this will say NotReady until the networking pod is created on the new node. Has to schedule the pod, then pull the container.
# kubectl get nodes 

#On the master, watch for the calico pod and the kube-proxy to change to Running on the newly added nodes.
# kubectl get pods --all-namespaces --watch

#Still on the master, look for this added node's status as ready.
# kubectl get nodes