# Spin up ci-cd-ct stack

Starts Jenkins 2, Nexus 2, Nexus 3, Sonarqube 5.1 and Selenium Grid 2.53 (with one chrome and one firefox node)  

# Overall Architecture

![ci-cd-ct Architecture](https://github.com/machzqcq/docker-for-all/blob/master/images/ci-cd-ct.png)  

- Virtualbox instance is docker host i.e. docker-engine - This is like the master that kicks off all containers
- docker-compose ensures that containers are in the right networks and can communicate. It also ensures that the services can be managed through one single file i.e. docker-compose.yml
- Jenkins is a container that is instantiated by docker-engine. Below we will however have a docker client installed within jenkins that can instruct parent docker-engine to kick off more containers. Feels like a circular loop ? Dont worry ! This is just a lab environment. Production setup will have Jenkins scaled large enough that it might exists in a totally different network segment with defined gateway rules and port mappings
- Docker-engine listens on 4243 or 2376 based on the version you are working with. Execute `docker-machine ls` to see the port

## How  

Run the script ./copy_certs.sh. This will copy the client tls certs for the docker-machine with name 'efault' to current directory. This is so that Jenkins container can talk back to the docker-engine that launches it.

```
docker-compose build
```  

This will build Jenkins 2.0 image (The ca.pem,cert.pem,key.pem are copied to /var/jenkins_home/.docker folder)  
Open up jenkins_tls.dockerfile and see the instructions  

## Run the ci-cd-cd stack  

```
docker-compose up -d
```  

This should start all services  

## How to access  

```
docker ps
```  

This will show all port mappings between container and docker host  


## Initial Configuration

- Docker ToolBox Installation [Video](https://vimeo.com/168685756) 
- Jenkins 2 [Video](https://vimeo.com/176071590)
- Nexus2 and Nexus3 [Video](https://vimeo.com/178827586)
- SonarQube 5.1 [Video](https://vimeo.com/178828281)
- Selenium Grid [Video](https://vimeo.com/178829673)


## Troubleshoot

In rare scenarios - if your jenkins cannot talk to docker-daemon and complains about SSL handshake exception, then  

```
docker-machine scp ~/.docker/machine/machines/default/ca.pem default:/home/docker/.docker/
docker-machine scp ~/.docker/machine/machines/default/cert.pem default:/home/docker/.docker/
docker-machine scp ~/.docker/machine/machines/default/key.pem default:/home/docker/.docker/

```  

The above assuming that /var/jenkins_home(jenkins container)  is a mounted volume on top of /home/docker/ (on docker host)


