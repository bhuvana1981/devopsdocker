#This is a sample Image 
FROM ubuntu 
MAINTAINER bhuvanaviji@gmail.com

RUN apt-get update 
RUN apt-get install nginx 
CMD [“echo”,”Image created”] 
