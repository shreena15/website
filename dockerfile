FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 curl net-tools zip
RUN cd /var/www/html/ && rm -rf *
RUN ls /var/www/html/
ADD bliss-html.zip /var/www/html/
RUN ls /var/www/html 
RUN unzip /var/www/html/bliss-html.zip && ls /var/www/html  && cp -R /var/www/html/bliss-html/* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80


