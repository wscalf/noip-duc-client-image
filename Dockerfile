FROM ubuntu:22.04

LABEL maintainer="wscalf"

RUN apt update && \
    apt install -y wget && \
    wget https://dmej8g5cpdyqd.cloudfront.net/downloads/noip-duc_3.0.0.tar.gz && \
    tar xf noip-duc_3.0.0.tar.gz && \
    cd noip-duc_3.0.0/binaries && \
    apt install ./noip-duc_3.0.0_amd64.deb

ENTRYPOINT noip-duc