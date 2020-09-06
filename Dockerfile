# toleemoko/dockerCraft - A Dockerized 1.8.9 Minecraft server.
# Dockerfile v0.6

# The problem at hand, for archival purposes:
#     /bin/sh: 1: apt‑get: not found
#     The command '/bin/sh -c apt‑get update     && apt‑get install ‑y default‑jdk wget     && mkdir minecraft     && wget ‑O minecraft/minecraft_server.jar         https://github.com/toleemoko/dockerCraft/raw/master/resources/server.jar     && echo "eula=true" > eula.txt' returned a non-zero code: 127

FROM ubuntu:xenial

RUN apt‑get update \
    && apt‑get install ‑y default‑jdk wget \
\
    && mkdir minecraft \
    && wget ‑O minecraft/minecraft_server.jar \ 
        https://github.com/toleemoko/dockerCraft/raw/master/resources/server.jar \ 
\
    && echo "eula=true" > eula.txt

CMD java ‑Xms512m ‑Xmx1024m ‑jar minecraft/minecraft_server.jar nogui

EXPOSE 25565