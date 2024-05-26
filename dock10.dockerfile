FROM python:3.7

LABEL maintainer="jacesca@gmail.com"

WORKDIR /app

RUN \
    apt-get install -y && \
    apt-get update

COPY biggest_lost.py .
