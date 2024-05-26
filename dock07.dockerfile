FROM ubuntu

LABEL maintainer="jacesca@gmail.com"

RUN useradd -m repl

USER repl

RUN mkdir -p /home/repl/projects/pipeline_final/

WORKDIR /home/repl/projects/pipeline_final/

COPY pipeline.py .
