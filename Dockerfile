FROM ubuntu
MAINTAINER bkake (bangaly.kake@gmail.com)
RUN apt-get update -y 
RUN DEBIAN_FRONTEND=nonintractive apt-get install nginx git -y
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/Bkake/static-website-example.git /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"] 
