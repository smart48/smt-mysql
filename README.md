# Smart48 MySQL

Image used for local DevOps testing with Minikube and based on https://github.com/laradock/laradock/blob/master/mysql/


## Docker Build

To build for our own Smart48 Docker Hub repository we use

`docker build . -t smart48/smt-mysql`

This will build with the tag using our organization's name and name for the image. Make sure Docker is running or see something like Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?

## Test

You can test the build image using:

`docker run --name smt-mysql -d smart48/smt-mysql:latest`

To see if it is there we do a `docker ps |grep smt`

## Docker Push

To push the built image you run:

`docker image push smart48/smt-mysql`