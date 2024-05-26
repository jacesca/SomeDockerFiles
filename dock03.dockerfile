FROM ubuntu

LABEL maintainer="jacesca@gmail.com"

RUN apt-get update
RUN apt-get install -y python3
