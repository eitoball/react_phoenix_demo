FROM ubuntu@14.04

MAINTAINER Eito Katagiri <eitoball@gmail.com>

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y build-essential curl inotify-tools git nodejs nodejs-legacy npm postgresql postgresql-contrib tmux

WORKDIR /tmp
RUN curl -O "http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb" && dpkg -i erlang-solutions_1.0_all.deb

RUN apt-get update && apt-get install -y elixir

RUN npm install -g bower

RUN useradd sample --password `openssl passwd -1 secret` --create-home --groups sudo
USER sample

RUN mix local.hex --force && mix local.rebar --force && mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v0.13.0/phoenix_new-0.13.0.ez --force

WORKDIR /home/sample
RUN echo "set -g default-shell /bin/bash\nset -g default-terminal screen-256color" > .tmux.conf

RUN mkdir /home/sample/sandbox
WORKDIR /home/sample/sandbox
