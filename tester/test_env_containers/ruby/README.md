
# RVM in a jenkins slave container
This is used as a jenkins slave to run Ruby tests

## Usage
```
$ docker build -t "myrvm" -f ruby_test_image.dockerfile .
$ docker run -d myrvm
```  

# Known Issues
- While building ruby_test_image, the docker logs warn against running bundler as root and that it might break the functionality for non-root users. Currently this is ignored as this is a lab environment. We can either switch to Jenkins just before running bundler inside Dockerfile and switch back to root subsequently. That is one way to address. Read https://rvm.io to implemente best practices. The error looks something as below  

```
Don't run Bundler as root. Bundler can ask for sudo if it is needed, and
installing your bundle as root will break this application for all non-root
users on this machine.
```
