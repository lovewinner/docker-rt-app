FROM ubuntu:bionic as builder
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    libnuma-dev 
  #   libnuma-dev \
  # && rm -rf /var/lib/apt/lists/*

RUN mkdir /code &&cd /code \ 
&& git clone --depth=1  https://gitee.com/lovewinner/rt-app.git 
RUN cd /code && git clone -b json-c-0.13.1-20180305 --depth=1 https://gitee.com/lovewinner/json-c.git

