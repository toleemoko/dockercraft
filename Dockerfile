# toleemoko/dockerCraft - A Dockerized 1.8.9 Minecraft server.
# Dockerfile v0.4

FROM ubuntu:trusty

RUN apt‑get update
# && apt‑get install ‑y default‑jdk wget

RUN mkdir minecraft \
&& wget ‑O minecraft/minecraft_server.jar \ 
https://github.com/toleemoko/dockerCraft/raw/master/resources/server.jar \ 
&& echo "eula=true" > eula.txt
CMD java ‑Xms512m ‑Xmx1024m ‑jar minecraft/minecraft_server.jar nogui

EXPOSE 25565