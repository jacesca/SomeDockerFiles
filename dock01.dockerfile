FROM python:3.12

LABEL maintainer="jacesca@gmail.com"

WORKDIR /app

COPY biggest_lost.py .

RUN python
