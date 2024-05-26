FROM ubuntu

LABEL maintainer="jacesca@gmail.com"

ENV NAME=Tim

CMD echo "Hello, my name is $NAME"

# docker build -t example09:v0 -f dock09.dockerfile .
# docker run --env NAME=Jacqueline hello_image
