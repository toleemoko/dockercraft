# toleemoko/dockerCraft - A Dockerized 1.8.9 Minecraft server.
# Dockerfile v1.5.6.2

FROM ubuntu:xenial
RUN apt-get update \
    && apt-get install -y default-jdk wget \
    && mkdir minecraft
RUN wget -O server.jar https://github.com/toleemoko/dockerCraft/raw/resources/mc1.8.9-server.jar
WORKDIR /minecraft

RUN echo "eula=true" > eula.txt
ENV memory=1024
# CMD java -Xms512m -Xmx${memory}m -jar ./server.jar nogui
EXPOSE 25565
