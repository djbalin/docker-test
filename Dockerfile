FROM ubuntu:latest

RUN apt update && \
    apt upgrade -y && \
    apt install -y tree && \
    rm -rf /var/lib/apt/lists/*
