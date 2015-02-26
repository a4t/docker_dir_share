FROM ubuntu:14.04
MAINTAINER shigure.onishi <shigure.onishi@nanapi.co.jp>

RUN apt-get update
RUN apt-get install -y curl
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh

COPY run.sh /tmp/
