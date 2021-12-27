FROM --platform=$TARGETPLATFORM ubuntu:bionic as builder
RUN apt-get update && apt-get install -y \
    git \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://gitee.com/lovewinner/rt-app.git  