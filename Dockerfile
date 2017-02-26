FROM node:6.10.0

MAINTAINER Kyosti Komulainen <kyosti.komulainen@arcusys.fi>

ENV ETHERPAD_VERSION 1.6.1

RUN apt-get update && \
    apt-get install -y unzip 

WORKDIR /tmp/

RUN curl -SL https://github.com/ether/etherpad-lite/archive/${ETHERPAD_VERSION}.zip > etherpad.zip
RUN unzip etherpad.zip
RUN mv etherpad-lite-${ETHERPAD_VERSION} /opt/etherpad-lite

WORKDIR /opt/etherpad-lite/
