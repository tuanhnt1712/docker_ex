FROM ubuntu:16.04

MAINTAINER Nguyen Thi Tu Anh

RUN DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y ruby ruby-dev gcc make python-software-properties curl

RUN gem install sass

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt install nodejs

RUN npm install -g yarn gulp webpack 

RUN apt install nginx

CMD ["/usr/sbin/nginx", "-g", "deamon off;"]
