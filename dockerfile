FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 curl net-tools
COPY ./bliss-html/* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80


