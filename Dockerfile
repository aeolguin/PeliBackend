#imagen del Sistema Operativo
FROM ubuntu:trusty

#AUTOR
MAINTAINER Ariel Olguin

#Instalar NODE.JS y dependencias
RUN apt-get update && \
    apt-get -y install curl && \
    curl sL https://deb.nodesource.com/setup_6.x | sudo bash - && \
    apt-get -y install python build-essential nodejs


#Pasar los modulos de node(node_modules)
ADD package.json /src/package.json

#Directorio de trabajo
WORKDIR /src

#Expone el puerto 8080
EXPOSE 8080

#Instala dependecias
RUN npm install

#Copia del directorio donde está el código al directorio dentro del container donde se va a ejecutar.
COPY [".", "/src"]

#Ejecutar dentro del servidor
CMD ["node", "/src/servidor.js"]