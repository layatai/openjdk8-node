FROM openjdk:8 AS base

RUN apt-get update && apt-get -y install curl \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash \
    && apt-get update && apt-get -y install nodejs npm \
    && rm -rf /var/lib/apt/lists/*

