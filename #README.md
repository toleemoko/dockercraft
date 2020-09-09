toleemoko/dockerCraft 
=====================
### An absolutely tiny, simple, Dockerized vanilla Minecraft 1.8.9 server for playing around in.
<br>

Starting a dockerCraft server is a simple 2 step process.
<br>

Assuming you have Docker installed, first, pull our dockerCraft image using:
```bash
docker pull toleemoko/dockercraft1:2
```
Then, start it up using:
```bash
docker run -it -p 25526:25565 toleemoko/dockercraft:1.2
```