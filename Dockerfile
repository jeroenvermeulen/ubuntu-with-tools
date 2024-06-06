# syntax=docker/dockerfile:1

FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
        bash \
        curl \
        dnsutils \
        git \
        iptraf-ng \
        iputils-arping \
        iputils-ping \
        iputils-tracepath \
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
        zsh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/log/*

CMD exec /bin/bash -c "echo 'Container started.'; trap : TERM INT; sleep infinity & wait"
