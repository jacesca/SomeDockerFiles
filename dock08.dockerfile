FROM ubuntu

LABEL maintainer="jacesca@gmail.com"

ARG WELCOME_TEXT=Hello!

RUN echo $WELCOME_TEXT

CMD echo $WELCOME_TEXT

# docker build --build-arg WELCOME_TEXT=Welcome! .
