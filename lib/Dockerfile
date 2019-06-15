#imagen del Sistema Operativo
FROM mysql:5.7.15

#AUTOR
MAINTAINER Ariel Olguin

#ENTORNO
ENV MYSQL_DATABASE=competencias \
    MYSQL_ROOT_PASSWORD=Arielo

ADD script.sql /docker_entrypoint_initdb.d 


EXPOSE 3306