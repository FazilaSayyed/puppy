FROM ubuntu:latest
LABEL DevOps ="Fazila"
COPY ./puppy
RUN apt-get update && \
    apt-get install -y apache && \
    apt-get clean
EXPOSE 80
COPY ./puppy/ /var/www/html/
CMD ["apache2ctl" , "-D" , "FOREGROUND"]     