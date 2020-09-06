# toleemoko/dockerCraft - A Dockerized 1.8.9 Minecraft server.
# Dockerfile v0.2

FROM ubuntu:20.04

RUN apt‑get update
RUN apt‑get install ‑y default‑jdk wget

RUN mkdir minecraft
RUN wget ‑O minecraft/minecraft_server.jar \ 
https://github.com/toleemoko/dockerCraft/raw/master/resources/server.jar
RUN echo "eula=true" > eula.txt
CMD java ‑Xms512m ‑Xmx1024m ‑jar minecraft/minecraft_server.jar nogui

EXPOSE 25565