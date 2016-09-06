## Nexus 3.0.5
There is not much here at this time. Once we find a programmatic way to create hosted docker repo, this page will have instructions.  
At this time, after the ci-cd-ct stack is up, we have to manually create a docker hosted repo exposed on 4243, http AND add '--insecure-registry' to /var/lib/boot2docker/profile in EXTRA_ARGS, so that the docker daemon running this machine can talk to the nexus docker registry

