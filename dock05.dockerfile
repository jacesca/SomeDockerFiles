FROM ubuntu

LABEL maintainer="jacesca@gmail.com"

RUN apt-get update && \
    apt-get install -y python3 curl unzip

RUN curl https://assets.datacamp.com/production/repositories/6082/datasets/31a5052c6a5424cbb8d939a7a6eff9311957e7d0/pipeline_final.zip -o /pipeline_final.zip && \
    unzip /pipeline_final.zip && \
    rm /pipeline_final.zip
    