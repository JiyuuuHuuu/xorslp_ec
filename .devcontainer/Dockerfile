FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Bring the image up to date
RUN apt-get dist-upgrade -y \
 && apt update -y \
 && apt upgrade -y \
 && apt install -y locales

# setting up locales
RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment \
 && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
 && echo "LANG=en_US.UTF-8" > /etc/locale.conf \
 && locale-gen en_US.UTF-8

RUN apt install -y nano \
 && apt install -y git \
 && apt install -y build-essential \
 && apt install -y curl

# install rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y