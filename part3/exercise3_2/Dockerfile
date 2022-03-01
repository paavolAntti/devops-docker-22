FROM ubuntu:latest

WORKDIR /usr/src/app

COPY ./exercise3_2.sh ./exercise3_2.sh

RUN apt-get -y update

RUN apt-get -y upgrade

RUN apt-get -y install git

RUN apt-get -y install docker.io

CMD ["/bin/bash"]