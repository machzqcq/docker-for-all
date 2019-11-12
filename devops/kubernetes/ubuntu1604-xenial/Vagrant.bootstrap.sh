#Setup 
#   1. 3 VMs Ubuntu 16.04.5 or 18.04.1.0, 1 master, 2 nodes.
#   2. Static IPs on individual VMs
#   3. /etc/hosts hosts file includes name to IP mappings for VMs
#   4. Swap is disabled
#   5. Take snapshots prior to installations, this way you can install 
#       and revert to snapshot if needed

#Disable swap, swapoff then edit your fstab removing any entry for swap partitions
#You can recover the space with fdisk. You may want to reboot to ensure your config is ok. 
swapoff -a
vi /etc/fstab

#Add Google's apt repository gpg key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

#Add the Kubernetes apt repository
sudo bash -c 'cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF'

#Update the package list and use apt-cache to inspect versions available in the repository
sudo apt-get update
apt-cache policy kubelet | head -n 20 
apt-cache policy docker.io | head -n 20 

#Install the required packages, if needed we can request a specific version
sudo apt-get install -y docker.io kubelet kubeadm kubectl
sudo apt-mark hold docker.io kubelet kubeadm kubectl

#Check the status of our kubelet and our container runtime, docker.
#The kubelet will enter a crashloop until it's joined. 
sudo systemctl status kubelet.service 
sudo systemctl status docker.service 

#Ensure both are set to start when the system starts up.
sudo systemctl enable kubelet.service
sudo systemctl enable docker.service