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

--------------------------------------------------

--Dockerfile Example

FROM reactionmechanismgenerator/rmg
WORKDIR /usr/share/nginx/html
RUN echo "react install successfully" > /usr/share/nginx/html/nginx.html
ENV myname deepak_gehlot
COPY  nginxfile /usr/share/nginx/html
ADD index.tar.gz /usr/share/nginx/html

--------------------------------------------------

1 -> docker volume from docker file

-----;----vi Dcokerfile

              FROM ubuntu
              VOLUME ["/volume"]
:wq

2 -> create a docker image

------;-----docker build -t (image-name) .

3 -> now create a container from this image & run

----;---- docker run -it --name (container-name) (image-name-maked) /bin/bash

now ls --we will se a volume dir !!!!

Now, share volume with another container...

---;----docker run -it -name (new-container-name) --priviliged=true --volumes-from (old-container-name) /bin/bash
_________________________________________________________________________________________________________________

how to push docker image in dockerhub

COMMANDS 
1. Sudo Su 
2. yum update y 
3. yum install docker -y 
4. Service docker start 
5. docker run -it ubuntu /bin/bash 

Now Create Some files inside Container 

Now Create image of this Container.


docker Commit Container1(name) image1(name) 

Now Create account in hub.docker.com 

-----NOW GIVE TO TAG TO YOUR IMAGE------

1. docker tag images1 dockerid/newimage <- what name we want to save in our docker hub

2. docker push dockerid/newimage

NOW WE CAN SEE THIS IMAGE IM DOCKER HUB

NOW CREATE AN EC@ INSTANCE IN ANOTHER REGION AND PULL IMAGE FROM HUB

3. docker pull dockerid/newimage

4. docker run -it --name mycon dockerid/newimage /bin/bash


STOP ALL RUNNING CONTAINERS COMMANDS.

-------;----docker stop $(docker ps -a -q)

DELETE ALL STOPPED CONTAINERS 

------;-----docker rm $(docker ps -a -q)

DELETE ALL IMAGES 

-------;------docker rmi -f $(docker images -q)

