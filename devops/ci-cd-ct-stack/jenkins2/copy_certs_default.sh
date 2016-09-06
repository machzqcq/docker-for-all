#!/bin/bash
eval $(docker-machine env default)
# run it as /bin/bash copy_certs.sh from this folder
docker-machine scp ~/.docker/machine/machines/default/ca.pem default:/home/docker/.docker/
docker-machine scp ~/.docker/machine/machines/default/cert.pem default:/home/docker/.docker/
docker-machine scp ~/.docker/machine/machines/default/key.pem default:/home/docker/.docker/
