# syntax=docker/dockerfile:1

FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y \
    bash \
    curl \
    dnsutils \
    git \
    iptraf-ng \
    joe \
    jq \
    mc \
    mysql-client \
    nano \
    ncdu \
    net-tools \
    nmap \
    php-cli \
    plocate \
    python3-pip \
    python3-pip \
    redis-tools \
    screen \
    speedometer \
    ssh \
    sudo \
    telnet \
    wget \
    whois \
    yq \
    zsh
RUN rm -rf /var/cache/apt

CMD exec /bin/bash -c "echo 'Container started.'; trap : TERM INT; sleep infinity & wait"
