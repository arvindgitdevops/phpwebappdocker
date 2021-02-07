FROM arwinddocker/webapp:mywebapp 
MAINTAINER Aravind arvbalas@gmail.com

#update Repository
RUN apt-get update
#RUN apt-get upgrade

#Install Apache
#RUN apt-get install -y apache2

#Install PHP modules
RUN apt-get install -y php7.0

#Copy Application files
RUN rm -rf /var/www/html/*
ADD website /var/www/html

#Configure Apache
#RUN chown –R www-data /var/www
#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2 
#ENV MYVALUE Edureka-Test

#Open port
EXPOSE 80
#EXPOSE 24

#start Apache service
CMD /usr/sbin/apache2ctl -D FOREGROUND
