# D3CTF2025-d3jtar

[1ue](https://github.com/luelueking) provided the key idea !

This is a repository of **D3CTF2025**'s challenge **d3jtar**.

This repository provides images and attachments of the original competition challenge, which you can use to reproduce the challenge.

Please follow the steps below to obtain the image and start the environment.

1. Download the jdk1.8.0_202 compressed package yourself and put it in the same directory as Dockerfile

2. execute following commands
```sh
docker build -t d3jtar_image .
docker run -d -p (your_port):8080 --name d3jtar d3jtar_image
```