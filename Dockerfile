FROM index.alauda.cn/library/ubuntu:latest
MAINTAINER TubeLiu "tubeliu@gmail.com"
ENV REFRESHED_AT 2017-04-26
ADD ubuntu-source/ch-resource.sh /ch-resource.sh
RUN bash /ch-resource.sh
RUN apt-get update
RUN apt-get -y -q install nginx
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/global.conf
ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD website/ /var/www/html/website/
EXPOSE 80
