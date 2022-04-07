#Task2 
podman run -it --name=firstcontainer  docker.io/centos

#Task3
podman run -itd --name=myhttpd -v /test:/usr/local/apache2/htdocs:Z docker.io/httpd

#Task4
podman run -itd --name=mymario -p 18081:8080 docker.io/pengbai/docker-supermario
#curl 0.0.0.0:18081

#Task5 
touch Dockerfile
cat >> FROM docker.io/alpine:3.4
cat >> RUN apk update
cat >> RUN apk add vim

podman build -t sampleimage . 

#Task6
podman tag localhost/sampleimage swanand21/podman-workshop:finalimage
podman login docker.io
podman push swanand21/podman-workshop:finalimage

#Task7
podman network create mynet1
podman run -itd --name=mysql -e MYSQL_ROOT_PASSWORD=1 -e MYSQL_DATABASE=first --network=mynet1 docker.io/mysql

