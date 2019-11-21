# Regular iterative loops
Below commands will help you achieve idempotent behavior i.e. if at any point, you feel to have drifted way too much with too many configuration changes and want to reset everything back to normal, below might help  

## General loop

```bash
pradeep@seleniumframework>vagrant up
pradeep@seleniumframework>vagrant status
pradeep@seleniumframework>vagrant ssh kubemaster
pradeep@seleniumframework>vagrant halt kubemaster
pradeep@seleniumframework>vagrant destroy kubemaster
```

## Gotchas
YMMV , however general understanding of Vagrant domain  

### Vagrant global scope
- Vagrant stores all boxes/isos/virtualbox images in `~/.vagrant.d`. First time it downloads in that location and subsequently re-uses the same box
- Delete the boxes folder if you suspect that the virtual image is damaged etc
- If you would like to build your own custom image, layer whatever you want on the base image, and then save it in the boxes folder, look at `vagrant package` command. If you come from vmware background you already are aware of the file extensions `.ovf` and `.vmdk`  

``` bash
pradeep@seleniumframework>pwd
~/.vagrant.d
pradeep@seleniumframework>ls
boxes                gems                 plugins.json         setup_version
data                 insecure_private_key rgloader             tmp
pradeep@seleniumframework>cd boxes/
pradeep@seleniumframework>ls
bento-VAGRANTSLASH-ubuntu-18.04 ubuntu-VAGRANTSLASH-trusty64
pradeep@seleniumframework>cd bento-VAGRANTSLASH-ubuntu-18.04/
pradeep@seleniumframework>ls
201910.20.0  metadata_url
pradeep@seleniumframework>cd 201910.20.0/
pradeep@seleniumframework>ls
virtualbox
pradeep@seleniumframework>cd virtualbox/
pradeep@seleniumframework>ls
Vagrantfile                     box.ovf                         metadata.json                   ubuntu-18.04-amd64-disk001.vmdk
```  

### Vagrant local scope
- In the folder where your Vagrantfile resides, is the local context/scope
- `machines` folder contains the virtualbox instance/data that is specific to your `Vagrantfile`
-  `private_key` is the file used to ssh into the machine, in case you don't want to `vagrant ssh`, and maybe want to `ssh vagrant@192.168.99.100 -i private_key` or something like that. Don't forget to `chmod 400 private_key` before using

```bash
pradeep@seleniumframework>ls
machines
pradeep@seleniumframework>cd machines/
pradeep@seleniumframework>ls
kubemaster      kubenode1      kubenode2
pradeep@seleniumframework>cd kubemaster/
pradeep@seleniumframework>ls
virtualbox
pradeep@seleniumframework>cd virtualbox
pradeep@seleniumframework>ls
action_provision creator_uid      index_uuid       synced_folders
action_set_name  id               private_key      vagrant_cwd
```