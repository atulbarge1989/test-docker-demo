FROM ubuntu:20.04
SHELL ["/bin/bash", "-c"]
RUN apt-get update
RUN ["apt-get","-y","upgrade"]
RUN /bin/bash -c "apt-get -y dist-upgrade" 
RUN apt-get install nginx netbase  libc6 -y
WORKDIR /usr/share/nginx/html/  
COPY index.html ./
COPY index.html /var/www/html/
SHELL ["/bin/sh", "-c"]
expose 80
VOLUME /var/www/html /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"] 
