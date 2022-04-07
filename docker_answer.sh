#Task 1
docker pull ubuntu
docker run -itd --name=Myapp ubuntu
docker exec -it Myapp mkdir /sample
docker exec -it Myapp touch /sample/abc.txt

#Task2
docker pull alpine
docker run -it --name=example2 alpine echo "Hello World"

#Task3 
docker pull httpd
docker run -itd --name=Myapp2 -p 8080:80 httpd

#Task4
mkdir /test
touch /test/test.txt
docker run -itd --name=Myapp3 -v /test:/tmp:Z centos

#Task5
docker run -itd --name=MySQL -e MYSQL_ROOT_PASSWORD=1 -e MYSQL_DATABASE=First_Data_Base mysql 
docker run -itd --name=gogs --link=MySQL -p 10080:3000 gogs/gogs
