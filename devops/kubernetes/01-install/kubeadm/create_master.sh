# This is because my wifi ip 192.168.0.0/16 conflicts with default calico.yml
# Hence I download the manifest, edit so that I can match it with 192.168.99.1/16
# I chose 192.168.99.1/16 because virtualbox gives me this cidr out of the box
# Pod network cidr does NOT have to align with apiserver-advertise address
# For e.g. you can use --pod-network-cidr=192.168.33.1/16
wget https://docs.projectcalico.org/v3.10/manifests/calico.yaml
sed -i 's/192.168.0.0/192.168.33.1/g' calico.yaml
sudo kubeadm init --pod-network-cidr=192.168.33.1/16 --apiserver-advertise-address=192.168.99.100

#Configure our account on the master to have admin access to the API server from a non-privileged account.
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#Create your pod network
kubectl apply -f calico.yaml

#Look for the all the system pods and calico pod to change to Running. 
#The DNS pod won't start until the Pod network is deployed and Running.
kubectl get pods --all-namespaces

#Gives you output over time, rather than repainting the screen on each iteration.
kubectl get pods --all-namespaces --watch

#All system pods should be Running
kubectl get pods --all-namespaces

#Get a list of our current nodes, just the master.
kubectl get nodes 

# If all node iternal-IPS are same , then do the below
# I was using virtualbox and the NAT address (10.0.2.15) was the internal IP for all nodes in cluster
# kubectl get nodes -o wide
sudo vi /var/lib/kubelet/kubeadm-flags.env
KUBELET_KUBEADM_ARGS="--node-ip=192.168.99.100 --cgroup-driver=cgroupfs --network-plugin=cni --pod-infra-container-image=k8s.gcr.io/pause:3.1"
sudo service kubelet restart
# repeat on every node, based on the static ip you assinged when upping the vm