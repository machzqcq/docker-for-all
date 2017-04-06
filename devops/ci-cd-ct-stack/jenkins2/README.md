# Steps

- Clone this repo
- Ensure that DOCKER_MACHINE_NAME file in the root of this repository has the correct docker-machine name (for e.g. default)
- Step into current folder i.e. doker-for-all/devops/ci-cd-ct-stack/jenkins2
- Run the shell script `copy_certs_default.sh` (if on linux, just execute as `./copy_certs_default.sh`, if on mac, execute the commands one after the other serially)
- Now build your docker image with the command `docker build -t "mytlsjenkins" --build-arg DOCKER_HOST=$(docker-machine ls --filter name=$(cat ../../DOCKER_MACHINE_NAME) --format "{{.URL}}") -f jenkins2_tls.dockerfile .`
- Now run the container with `docker run -d -p 8080:8080 -p 50000:50000 -v /home/docker:/var/jenkins_home mytlsjenkins`

From here access the jenkins UI using http://<docker-machine-ip>:8080 and use the intialAdminPassword (retrieve it from docker logs -f <container_id>)
