FROM ubuntu:bionic as builder
RUN apt-get update && apt-get install -y \
    git \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /code &&cd /code && git clone https://gitee.com/lovewinner/rt-app.git  