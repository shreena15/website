FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 curl net-tools zip
ADD bliss-html.zip /var/www/html/
RUN ll /var/www/html 
RUN unzip /var/www/html/bliss-html.zip && ll /var/www/html  && cp -r /var/www/html/bliss-html/* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80


