#imagen del Sistema Operativo
FROM mysql:5.7.15

#AUTOR
MAINTAINER Ariel Olguin

#ENTORNO
ENV MYSQL_DATABASE=competencias \
    MYSQL_ROOT_PASSWORD=Martina2712

ADD script.sql /docker-entrypoint-initdb.d 

#Expone el puerto 8080

EXPOSE 3306
