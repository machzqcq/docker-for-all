# Docker Start to Finish
Every industry is undergoing significant fast-paced changes with the disruption of technologies, that were once only in our imagination. Software and Hardware democratization, open source, internet as information equalizer, crowd collaboration, MOOC, IoT - the list is unending. As a technologist and having deep respect for the effort that engineers put in, I feel an obligation to contribute to the democratization.  

Contrary to the belief of folks who live in the fear that "machines will overtake the world!", I believe that machines and automation will actually make the world better, efficient and exciting to live in. Even if that were NOT the case, the solution would be NOT to fear, but step up your game and get ahead of machines (Do you have another option?). So regardless, I feel we should embrace technologies with optimism and view machines as complementing human skills.  

Software over the web is re-defining the business models we established for years. Airbnb, Uber, Cloud tech have shown us how software can be world-changing. Companies across all industries are now relying on software as competitive edge, so they either have to hire more engineers to desigh and develop software or hand over that competitive edge to a vendor and be at their mercy. The former seems to be the trend.  

Software Development with high quality, security, reliability etc. is not as easy as people in non-software functions assume. Software Engineering is NOT the same as "IT Support". "Software engineers do NOT necessarily fix your computers!".  

Software Development involves quite a bit of trade-off decisions and is composed of millions of components talking to each other. The intent is to say that there are dependency chains of communication and software engineers have to build layer on top of layers, that eventually becomes a software , either available on internet or something that can be installed by oneself.  

<strong>Docker helps minimize the complexity of management of those dependency chains across layers</strong>  

[Docker For Beginners](https://seleniumframework.wordpress.com/2016/07/30/docker-for-beginners/)  

# Navigating this repo

- Folder name maps to the roles/functions in software organizations. For e.g. if you are developer, you might find the most useful information in developer folder 
- If you are devops - then start with devops folder
- If you are polyglot beast - read everything
- Below table has links to videos - click each to watch before you invest time in coding
- Some Videos below (marked Private) are available only after you sign up for the course and email [here](pradeep@seleniumframework.com)

# Value Add - Concepts
Each of the link in the below table is a video that demonstrates the value add. If the video demonstrates value in what you do, then step into folders for granular details.  

It is highly recommended to complete the fundamental concepts videos before moving further 

| *Fundamental Concepts*                              |
|-------------------------------------|
| [Install Docker](https://vimeo.com/176871633)   - on a *nix server (28:21)            |
| [Install Docker ToolBox](https://vimeo.com/168685756) - Development environment for docker-engine, docker-compose, hypervisors etc. (5:25)|
| [Install Docker natively on mac](https://vimeo.com/181244227) - As a developer, use docker during development (3:24)|
| [Docker Machine - Virtualbox](https://vimeo.com/181324717) - docker-machine on virtualbox hypervisor(9:02)|
| [Docker Machine - AWS](https://vimeo.com/181324962) - docker-machine on amazon ec2 (Private)(14:59)|
| [Docker Machine - Azure](https://vimeo.com/181489810) - docker-machine on Azure (Private)(24:58)|
| [Docker images](https://vimeo.com/176874462) - Docker for creating images(13:51)                       |
| [Docker Containers](https://vimeo.com/176892954) - Instantiate docker images - containers(31:59)     |
| [Docker Containers - More commands](https://vimeo.com/176934100) - A little more deeper dive into containers(14:06) |
| [Docker build](https://vimeo.com/176939172) - Understanding docker build(37:33)                  |

# Separate Tracks



| *Developer* | *Tester* | *DevOps* | *Product Owner* [Slides](http://slides.com/machzqcq/docker-for-product-owners#/) | *Productionizing*|
| ------------- | ------------- | ------------- |-----------|--------------|
| [Setup couchbase for api app](https://vimeo.com/180444021) (11:53) | [Acceptance Tests App](https://vimeo.com/179279170)(4:52) | [CI-CD-CT-Jenkins](https://vimeo.com/176071590)(36:05) | [Docker-Databases](https://vimeo.com/168685388)(12:11)| Amazon ECS Cluster - Instructor Led |
| [An expressjs api app](https://vimeo.com/180445964)(22:49) | [Selenium grid](https://vimeo.com/179279205)(11:25) | [CI-CD-CT-Nexus](https://vimeo.com/178827586)(50:33) | [Docker-Hadoop-Private](https://vimeo.com/168685492)(16:16)| [Docker Swarm](https://vimeo.com/189520997)(25:53) |
| [Integrate couchbase with api](https://vimeo.com/180445985)(15:12) | [Containers for Test Execution](https://vimeo.com/179279599)(14:32) | [CI-CD-CT-Sonarqube](https://vimeo.com/178828281)(11:51) | [Docker-JenkinsCI](https://vimeo.com/168685559)(7:47)| [Docker Swarm - Services](https://vimeo.com/189543080)(40:07)|
| [Dockerize api app](https://vimeo.com/180516663)(23:53) | [Full acceptance tests feedback loop - Private](https://vimeo.com/179279644)(12:22) | [CI-CD-CT-SeleniumGrid](https://vimeo.com/178829673)(10:39) | [Docker-applied-micro-services Private](https://vimeo.com/168685613)(15:09)| *Ops Dashboard - Visualization* [cAdvisor](https://vimeo.com/190469368) (11:21), [weavescope](https://vimeo.com/190469614) (23:10), [portainer](https://vimeo.com/190472160)(23:09)|
|[Build Unit Tests feedback loop](https://vimeo.com/180529349)(15:58)| [SonarQube-TODO]()| [Ansible-Docker-Instructor Led]()|[Docker-Python-Notebooks](https://vimeo.com/168685694)(8:12)| *Instructor Led*|
|[Acceptance Tests feedback loop - Private](https://vimeo.com/180529568)(10:43)| [SecurityTests-Instructor Led]()| [Kubernetes-Docker-Instructor Led]()| [More-Instructor Lead]()|*Instructor Led*|  



| *Best Practices*                              |
|-------------------------------------|
| [Docker Build Labels](https://vimeo.com/183234013)   - Build labels, microbadger etc. (13:53)         |  
| [Docker bench security for docker hosts](https://vimeo.com/183236329) - Security best practices for deploying container in production(5:47)|  
| [Docker Bash completion tips](https://vimeo.com/186178609) - Use Homebrew bash completion instead of --help to save time |  



# A training course for learning containerization and Automation 
This code helps developers, devops and testers (ok I will be honest , test "automation" engineers)  understand how docker containers ease dependency nightmare(s) in the realm of build/deployment of application environments, configuration management, better collaboration and isolated contained environments. Specifically   

- Helps being on same page when collaborating with various roles in software development
- Less pollution of dependencies at OS, platform and runtime layers 
- Minimizes the confusion around "It works on my machine!"
- Portability between on-premises and cloud environments
- Replicate production like environments including data, network and storage
- Get as far as possible with integration testing by being able to replicate the entire dependency chain (down to the OS layer) of applications
- Helps replicate data center architecture models (aka. data center in a box) on developer environments, so that developers focus on one thing - Innovation!

# Overall Flow

- First we spin up a lab environment from ci-cd-ct stack folder - Jenkins, Nexus , SonarQube and Selenium Grid
- Build our custom test environment containers from Docker manifests - we ensure that jenkins can remotely ssh into these containers and these containers have the necessary runtime for running automated tests
- Docker compose helps start the entire lab with containers
- Jenkins container talks back to the docker engine that launches it - This is so that Jenkins can launch test containers as slaves during execution. We did a small hack here i.e. copied the *.pem files to the jenkins container
- Tester - The web application that we use is already hosted on [AutomationPractice](http://automationpractice.com/index.php) - This website has been in use for all our tutorials hosted on [Selenium Framework](http://www.seleniumframework.com)
- Tester - It is possible to host the application under test in a separate container, so that everything runs locally. This step is taught in the classes that we conduct
- Tester - Execute integration tests that launch browsers in Selenium Grid and test the web application
- Tester - Results will be seen as cucumber graphs in Jenkins
- Tester - Test containers come up during execution and then automatically disconnect from Jenkins master after execution  
- Developer - Start writing an expressjs api with integration to Couchbase and go through step by step utilizing docker and containing the environments
- Developer - Align with Continuous Delivery practices while developing the application following 12-Factor app principles
- Developer - Experience the containerization concepts and how they ultimately help producing a high quality, scalable, reliable system
- DevOps - Understand the concepts of Continuous Integration, Dependency management of libraries and deploy/maintain enterprise grade servers. Start with a lab environment in this repo, but scale it to wherever you would like to.
- DevOps - Infrastructure as Code, Infrastructure as service, platform as code, platform as service -- Understand, implement the concepts with docker and experience Automation at all layers in a software development stack
- Product Owner - Without getting too deep into technology, experience Docker and its power of being able to communicate context(s)

# Environment/Lab setup Architecture

###Mac Mini

![My Setup](https://github.com/machzqcq/docker-for-all/blob/master/images/MySetup.png)  

###Windows

![My Setup Windows](https://github.com/machzqcq/docker-for-all/blob/master/images/MySetup-windows.png)  

#### Explanation of the above diagrams

- Mac Mini (or windows) is the server aka. modeling the docker environment
- From any laptop (I am using a windows/mac laptop), make ssh connection into mac-mini (or windows)- This is pretty much my world and interface for most of this training. Very rarely I actually vnc into mac-mini for eg. when virtualbox is paused, otherwise it is all ssh
- Installing Docker Toolbox on mac-mini (or windows) will install virtualbox, download a boot2docker iso, docker client, docker-compose
- So actually docker-engine runs on a virtualbox instance. Sure we can directly make a connection to the virtualbox instance which is the actual docker host by port forwarding to 22 on docker host. However I did not choose it that way because I had things going on in mac-mini
- Any service I had to access on docker host, I had port mappings already defined , so that I can access the service from my laptop , instead of vnc'ng into the mac-mini. For example 18080:18080 to access jenkins container. So if 192.168.99.100 is the docker host and 192.168.1.8 is ip of mac-mini, then I can access Jenkins either on http://192.168.99.100:18080 from mac-mini OR http://192.168.1.8:18080 from anywork on the network, since my laptop is in the same network as mac-mini.
- During this training course, we do everything locally i.e. on virtualbox , however docker-machine can talk to pretty much any of the public clouds through its drivers, hence you can choose to have your compute, storage and network in AWS, Digital Ocean et al. if you prefer it that way. The only difference would be to provider the driver name while creating the docker machine.

# Actual Steps

- Install Docker ToolBox. Detailed Video [here](https://vimeo.com/168685756)
- Create a docker machine with name 'default' `docker-machine create --driver virtualbox default`
```
# docker-machine create -d virtualbox --virtualbox-memory "6000" default
Running pre-create checks...
Creating machine...
(default) Creating VirtualBox VM...
(default) Creating SSH key...
(default) Starting VM...
Waiting for machine to be running, this may take a few minutes...
Machine is running, waiting for SSH to be available...
Detecting operating system of created instance...
Detecting the provisioner...
Provisioning with boot2docker...
Copying certs to the local machine directory...
Copying certs to the remote machine...
Setting Docker configuration on the remote daemon...
Checking connection to Docker...
Docker is up and running!
To see how to connect Docker to this machine, run: docker-machine env default
```
- Docker compose - Already comes with Docker Toolbox, nothing to do
- Open a terminal, ssh and git clone 
- cd into ci-cd-ct-stack/jenkins2
- `/bin/bash copy_certs_default.sh' - This will copy the ca.pem, cert.pem and key.pem to /home/docker/.docker. The reason we do this is because we want the jenkins to be able to instantiate containers on 'default' docker machine. This is not required, infact we do this only in a lab environment. Recommended production set up will have Jenkins on separate host  
```
pradeep@seleniumframework>/bin/bash copy_certs_default.sh
ca.pem                                                                                     100% 1042     1.0KB/s   00:00
cert.pem                                                                                   100% 1082     1.1KB/s   00:00
key.pem                                                                                    100% 1675     1.6KB/s   00:00

```
- cd into ci-cd-st-stack and `docker-compose up` - This will start Jenkins, Nexus, SonarQube and Selenium GRID (See below the port mappings) - see Videos in the table above for demonstration    

| *Service* | *Link* | *Credentials* |
| ------------- | ------------- | ------------- |
| Jenkins | http://${docker-machine ip default}:18080/ | Initial set up required |
| SonarQube | http://${docker-machine ip default}:19000/ | admin/admin |
| Nexus | http://${docker-machine ip default}:18081/nexus | admin/admin123 |
| Nexus 3 | http://$(docker-machine ip default):18082 | admin/admin123|
| Selenium Grid | http://${docker-machine ip default}:4444/grid/console | no login required |
|Selenium Chrome node| vnc on $(docker-machine ip default}:15900| no login required|
|Selenium Firefox node| vnc on $(docker-machine ip default}:15901| no login required|

- `docker-compose ps` should yield all the containers and its port mappings
```
pradeep@seleniumframework>docker-compose ps
            Name                         Command                         State                          Ports
-------------------------------------------------------------------------------------------------------------------------
cicdctstack_jenkins_1          /bin/tini -- /usr/local/bi     Up                             0.0.0.0:50000->50000/tcp,
                               ...                                                           0.0.0.0:18080->8080/tcp
cicdctstack_nexus_1            /bin/sh -c ${JAVA_HOME}/bi     Up                             0.0.0.0:18081->8081/tcp
                               ...
cicdctstack_nodech_1           /opt/bin/entry_point.sh        Up                             0.0.0.0:15900->5900/tcp
cicdctstack_nodeff_1           /opt/bin/entry_point.sh        Up                             0.0.0.0:15901->5900/tcp
cicdctstack_selhub_1           /opt/bin/entry_point.sh        Up                             0.0.0.0:14444->4444/tcp
cicdctstack_sonar_1            ./bin/run.sh                   Up                             0.0.0.0:15432->5432/tcp,
                                                                                             0.0.0.0:19000->9000/tcp,
                                                                                             9092/tcp
cicdctstack_sonardb_1          /docker-entrypoint.sh          Up                             5432/tcp
                               postgres
```
- Open a new terminal/ssh connection and cd into test-env-containers/ruby
- `docker build -t "myrvm" -f rvm_test_image.dockerfile` - This will build a docker image myrvm:latest. Might take a while if your internet connection is slow, but lets remember that this is creating an image, so we don't do this step often
- `docker images` - Check that myrvm image appears
- Now you are ready to start using the lab  

## Jenkins 2  

- Starting with Jenkins 2, there were some changes, especially no anonymous access. A randomly generated hash created by the system is required to do initial configuration on the UI
- So when the container comes up, if you access jenkins for e.g. http://192.168.99.100:18080, the below screen shows up
- The password can be retrieved by executing `docker logs <jenkins_container_id>`  

![Jenkins initial password](https://github.com/machzqcq/docker-for-all/blob/master/images/jenkins2-initial-password.png)  

Continue with default plugins selection  

![Jenkins plugins install](https://github.com/machzqcq/docker-for-all/blob/master/images/jenkins2-plugins.png)  

Plugins installation progresses as below  

![Jenkins plugins progress](https://github.com/machzqcq/docker-for-all/blob/master/images/jenkins2-plugins-installing.png)  

- Install docker jenkins plugins   

Rest of the explanation is inside the course videos

## Nexus 2
Access Nexus2 on port 18081 on docker host. Alternately, if you have the port mapping defined, you can access it using localhost:18081.   

![Nexus2](https://github.com/machzqcq/docker-for-all/blob/master/images/nexus2.png) 

## Nexus 3

Access Nexus 3 port 18082 on docker host. We use Nexus 3 so that we can set up a docker repo. Nexus 2 does't have that support.

![Nexus3](https://github.com/machzqcq/docker-for-all/blob/master/images/nexus3.png)


## Monitoring and Visualization

### cAdvisor 
cAdvisor from google gives information on web UI at the host and container leve granularity.  

![cAdvisor](https://github.com/machzqcq/docker-for-all/blob/master/images/cadvisor-dashboard.png)  

[Setup Video](https://vimeo.com/190469368)
 

### WeaveScope

cAdvisor from Google provides basic container and host monitoring visualization, however weave scope takes it to a new level  

![Weave Scope](https://github.com/machzqcq/docker-for-all/blob/master/images/visualization.png)  


`docker-machine ssh default`  

```
sudo curl -L git.io/scope -o /usr/local/bin/scope
sudo chmod a+x /usr/local/bin/scope
scope launch
```  

Access on http://$(docker-machine ip default):4040   

[Setup Video](https://vimeo.com/190469614)

### Portainer 

![Portainer](https://github.com/machzqcq/docker-for-all/blob/master/images/portainer_dashboard.png)  

[Setup Video](https://vimeo.com/190472160)

# Roadmap

- Docker various storage drivers and demos
- Docker network drivers (including overlay networks)
- Docker with Kubernetes
- Docker with Apache Mesos
- Docker UCP, DTR, dockerhub
- Service Discovery using Consul, registrator etc. with patterns

# Want to contribute?

- Test Environment images (dockerfiles) for python, golang, php, java, .net etc. - currently written only for ruby
- Improvements and pull requests (please be clear when you submit pull requests with detailed steps on how to reproduce steps)
- Need more candidate developer apps in all stacks (python, ruby, .net, java, php etc.) 

# Valuable docker commands
- `docker rmi $(docker images | grep "^<none>" | awk "{print $3}")` OR `docker images -q --filter "dangling=true" | xargs -l docker rmi` - Remove all images that are not tagged  
- `docker rmi $(docker images | awk '$1 ~ /blah/ { print $3 }')` - Remove all images that have "blah" in its name (REPOSITORY column)
- `docker stop $(docker ps -aq)` - Stop all running containers  
- `docker rm $(docker ps -aq)` - Remove all non-running containers
- `docker exec cicdctstack_jenkins_1 cat /var/jenkins_home/secrets/initialAdminPassword` - Retrieves initial Admin password required for jenkins initial configuration  
- `docker ps -a -q  --filter ancestor=<image-name>` - Return all containers that were spun off from the image-name  
- `docker rm $(docker stop $(docker ps -a -q --filter ancestor=<image-name> --format="{{.ID}}"))` OR `docker ps --filter ancestor=blah -q | xargs -l docker rm` - stop all matching containers that have a matching image-name   
- `dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null}` - Add this shell function in your ~/.bash_profile. That way you can clean up containers first and then remove images.  
- `docker system prune` - delete ALL unused data (i.e. in order: containers stopped, volumes without containers and images with no containers). Available in docker 1.13 [PR 26108](https://github.com/docker/docker/pull/26108)  
- `brew install bash-completion` - Add the instruction that is asked to add to ~/.bash_profile. Then execute [this](https://docs.docker.com/docker-for-mac/#/installing-bash-completion). This will greatly help auto-complete sub commands on docker, docker-compose and docker-machine


# Instructor led Training
Instructor led training classes are available on request. Please email pradeep@seleniumframework.com



