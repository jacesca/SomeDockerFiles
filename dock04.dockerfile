FROM ubuntu:22.04

LABEL maintainer="jacesca@gmail.com"

RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip install pandas requests

COPY pipeline.py /app/
