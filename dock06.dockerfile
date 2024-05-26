FROM ubuntu:22.04

LABEL maintainer="jacesca@gmail.com"

RUN apt-get update
RUN apt-get -y install python3

CMD python3
