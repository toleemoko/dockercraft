toleemoko/dockerCraft 
=====================
### An absolutely tiny, simple, Dockerized vanilla Minecraft 1.8.9 server for playing around in.
<br>

Starting a dockerCraft server is a simple 2 step process.
<br>

Assuming you have Docker installed, first, pull our dockerCraft image using:
```bash
docker pull toleemoko/dockerCraft1:2
```
Then, start it up using:
```bash
docker start -it -p 25526:25565 toleemoko/dockerCraft:1.2
```