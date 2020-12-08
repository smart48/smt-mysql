# Smart48 MySQL

Image used for local DevOps testing with Minikube and based on https://github.com/laradock/laradock/blob/master/mysql/


## Docker Build

To build for our own Smart48 Docker Hub repository we use

```
docker build . -t smart48/smt-mysql
```

This will build with the tag using our organization's name and name for the image. Make sure Docker is running or see something like Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?

## Docker Tag


To tag the latest stabele build you can use `docker tag <repo/image> <repo/image:version>`:

```
docker tag smart48/smt-mysql smart48/smt-mysql:1.0
```

You will on listing then see the newly added version:

```
docker images |grep smt-mysql
smart48/smt-mysql              1.0                 9aae819f7c46        7 days ago          545MB
smart48/smt-mysql              latest              9aae819f7c46        7 days ago          545MB
```
## Test

You can test the build image using:

`docker run --name smt-mysql -d smart48/smt-mysql:latest`

To see if it is there we do a `docker ps |grep smt`

## Docker Push

To push the built image you run:

```
docker image push smart48/smt-mysql
```

if you did tag the image - and for production it is better to work with versioned images - you run the following:

```
docker image push smart48/smt-mysql:1.0
```