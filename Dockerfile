# syntax=docker/dockerfile:1

FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
        bash \
        build-essential \
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
        netcat-openbsd \
        nmap \
        php-cli \
        plocate \
        postgresql-client \
        python3 \
        python3-pip \
        python3-venv \
        redis-tools \
        screen \
        speedometer \
        ssh \
        sudo \
        tcptraceroute \
        telnet \
        wget \
        whois \
        yq \
        zsh && \
    apt-get clean && \
    wget https://github.com/Tcp-Ping/Tcping/releases/download/v0.1.1/linux-amd64-tcping -O /usr/local/bin/tcping && \
    rm -rf /var/lib/apt/lists/* /var/log/*

CMD exec /bin/bash -c "echo 'Container started.'; trap : TERM INT; sleep infinity & wait"
