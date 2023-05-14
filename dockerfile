FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 curl net-tools zip
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80


