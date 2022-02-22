FROM ubuntu:20.04

COPY curler.sh .

RUN apt-get -y update

RUN apt-get -y upgrade

RUN apt-get -y install curl

CMD ./curler.sh