# for building stuff, mac is trash ngl for compiling stuff atleast
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository universe && \
    apt update && \
    apt install -y valgrind kcachegrind build-essential gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf cmake

WORKDIR /workdir

CMD ["bash"]

