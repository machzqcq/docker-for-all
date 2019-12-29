#Setup 
#   1. 3 VMs Centos  > 7.5, 1 master, 2 nodes.
#   2. Static IPs on individual VMs
#   3. /etc/hosts hosts file includes name to IP mappings for VMs
#   4. Swap is disabled
#   5. Take snapshots prior to installations, this way you can install 
#       and revert to snapshot if needed

sudo -i
# Install and actiate iptables and disable firewalld
yum install iptables-services.x86_64 -y
systemctl stop firewalld.service
systemctl disable firewalld.service
systemctl mask firewalld.service
systemctl start iptables
systemctl enable iptables
systemctl unmask iptables
iptables -F
service iptables save

# Install docker from official repo
yum install -y yum-utils wget
yum-config-manager –add-repo \
https://docs.docker.com/engine/installation/linux/repo_files/centos/docker.repo
yum makecache fast
yum install -y docker-engine

swapoff -a
sed -i.bak -r 's/(.+ swap .+)/#\1/' /etc/fstab

yum update

sudo bash -c 'cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF'

# Set SELinux in permissive mode (effectively disabling it)
setenforce 0
sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
yum install -y docker kubelet kubeadm kubectl --disableexcludes=kubernetes

# enable iptables filtering so proxying works correctly
sudo bash -c 'cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF'
 
sudo sysctl --system

# Ensure it stars upon reboot
systemctl restart docker && systemctl enable docker
systemctl restart kubelet && systemctl enable kubelet