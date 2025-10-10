FROM ubuntu:24.04

RUN apt update -y && apt install apache2 -y && apt clean

RUN sed -i 's/Listen 80/Listen 8083/' /etc/apache2/ports.conf

EXPOSE 8083

CMD ["apache2ctl", "-D", "FOREGROUND"]
