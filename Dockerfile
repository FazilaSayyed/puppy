FROM ubuntu:latest

LABEL DevOps="Fazila"

RUN apt update && \
    apt install apache -y && \
    apt clean

    
EXPOSE 80
   
COPY ./tommy/ /var/www/html/

CMD ["apache2ctl" , "-D" , "FOREGROUND"]     
