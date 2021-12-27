FROM ubuntu:bionic as builder
RUN apt-get update && apt-get install -y \
    git \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /code &&cd /code \ 
&& git clone --depth=1  https://gitee.com/lovewinner/rt-app.git 
RUN cd /code && git clone -b json-c-0.13.1-20180305 --depth=1 https://github.com/json-c/json-c.git

RUN apt install -y libnuma-dev
