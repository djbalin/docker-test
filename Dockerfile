FROM ubuntu:22.04

RUN apt update && \
apt upgrade -y && \
apt install -y tree && \
rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/bash" ]