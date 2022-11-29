FROM ubuntu
RUN apt-get update
RUN DEBIAN FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install apache2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
