# Preconditions

- Needed ONLY if you want to set up kubernetes multi node (single master) from scratch using kubeadm (Otherwise minikube is good enough for most purposes if your focus is on deploying applications to kube and NOT administration). See how to [minikube](https://vimeo.com/205127936) , which is already in the parent readme index
- Frankly if you are not into devops/infra admin, this is overkill and not a good investment of your time, especially given there are so many managed kubernetes deployment like EKS, GCP, Azure and so many more optins with Kops,Ansible etc.
- Then why am I doing this ? My mind works better when I set up things from scratch at least once
- Assuming you have basic knowledge of hypervisor(s) i.e. virtual machines with VMware, virtualbox or similar. Also vagrant, which is command line way of upping vm's

# Gotchas
- I was setting this up at home and my wifi router ip was 192.168.0.x (Ensure that you do NOT select cidr similar to that range, when setting hostonly ips in Vagrantfile). I probably lost an entire week not understanding why kubernetes was not coming up, the root cause was because my hostonly ip within vm was also 192.168.0.x , which was conflicting with my host machine's ip
- After `vagrant up` - probably have to ssh into each machine and set the static ip manually (I was using sed to write, somehow it was working, will revisit this later and code it off in the bootstrap script). For example ensure you replace `127.0.0.1   kubemaster   kubemaster` with `192.168.99.100  kubemaster`. Likewise for kubenode1 and kubenode2
- If you have set up docker swarm in the past (I used docker-machine and vagrant, but docker-machine rocks with ease of use, the only problem is that it locks you up with busybox image and not lets us choose ubuntu/centos etc.), then kubernetes set up aligns mostly , especially around upping the master and then joining the nodes using token and discovery token. [Docker Swarm refresher](https://vimeo.com/189520997)

# How it works