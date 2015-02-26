FROM ubuntu

MAINTAINER onishi <shigure.onishi@nanapi.co.jp>

RUN apt-get update
RUN apt-get install -y wget build-essential libpcre3 libpcre3-dev zlib1g zlib1g-dev openssl libssl-dev

RUN cd /usr/local/src/ ; \
    wget http://nginx.org/download/nginx-1.7.10.tar.gz ; \
    tar xvf nginx-1.7.10.tar.gz ; \
    cd nginx-1.7.10 ; \
    ./configure ; \
    make ; \
    make install

RUN echo "v1.0.0" /usr/local/nginx/html/index.html

VOLUME share_data

ENTRYPOINT /usr/local/nginx/sbin/nginx -g 'daemon off;' -c /usr/local/nginx/conf/nginx.conf
