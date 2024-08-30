FROM ubuntu:latest

LABEL DevOps="Fazila"

RUN apt-get update && \
    apt-get install apache -y && \
    apt-get clean

    
EXPOSE 80
   
COPY ./tommy/ /var/www/html/

CMD ["apache2ctl" , "-D" , "FOREGROUND"]     
