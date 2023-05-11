-# Basic commands in Docker
-
-----sudo yum update -y
-
-______ how to install docker
---;--yum install docker -y
-______ To see all images present in your local machine
---;--docker images
-______ To find out images in docker hub
---;--docker search (name of tools or image name like jenkins etc.)
-______ To download image from dockerhub to local machine
---;--docker pull (name of tools or dependencies like jenkins etc.)
-______ To give name to container
---;--docker run -it --ec2-user /bin/bash
-         i = interactive t = terminal
-______ To check service start or not
---;--service docker status
-______ To start container
---;--docker start (container name)
-______ To go inside container
---;--docker attach (name of container)
-______ To see all container
---;--docker ps -a
-______ To see only running container
---;--docker ps(process status)
-______ To stop container
---;-- docker stop (container name)
-______ To delete container
---;--docker rm (container name)
-______ Docker information
---;--docker info

-----------------------------Docker Components---------------------

FROM → for base image this Command must be on top of the dockerfile

RUN  → To execute Command it then create


MAINTAINER  → Author /owner / Description

COPY  → Copy files Lood System (docker vim) 7 we need to provide source, destination ('We Can't download file from internet & any remote repo)

ADD  → Similar to Copy but, it Provides of feature to download files from internet, also we extract file at docker images Sicks.

EXPOSE → To expose parts such as post 8080for tomcat, Port 80 for Apache etc.

WORKDIR  →  To See working director for a Container

CMD  → Execute Command but during

ARG → The ARG directive in Dockerfile defines the parameter name and defines its default value. This default value can be overridden by the --build-arg <parameter name>=<value> in the build command docker build .

--------------------------------------------------
