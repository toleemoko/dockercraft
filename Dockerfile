# toleemoko/dockerCraft - A Dockerized 1.8.9 Minecraft server.
# Dockerfile v1.5

FROM ubuntu:xenial
RUN apt-get update \
    && apt-get install -y default-jdk wget \
    && mkdir minecraft \
    && wget -O minecraft/server.jar https://github.com/toleemoko/dockerCraft/raw/resources/mc1.8.9-server.jar \
    && echo "eula=true" > eula.txt
ENV memory=1024
CMD java -Xms512m -Xmx${memory}m -jar minecraft/server.jar nogui
EXPOSE 25565
