FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 curl net-tools zip
COPY ./bliss.zip /var/www/html/
RUN "unzip /var/www/html/bliss.zip"
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80


