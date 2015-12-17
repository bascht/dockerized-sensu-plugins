FROM ruby:2-slim
RUN apt-get update; apt-get install -y build-essential libmysqlclient-dev
RUN gem install \
  sensu-plugins-ssl \
  sensu-plugins-nginx \
  sensu-plugins-aws \
  sensu-plugins-apache \
  sensu-plugins-docker \
  sensu-plugins-dns \
  sensu-plugins-consul \
  sensu-plugins-ssl \
  sensu-plugins-redis \
  sensu-plugins-mysql \
  sensu-plugins-haproxy \
  sensu-plugins-elasticsearch \
  sensu-plugins-openvpn \
  sensu-plugins-http \
  sensu-plugins-hubot \
  sensu-plugins-xmpp \
  sensu-plugins-ntp \
  sensu-plugins-vmstats

RUN apt-get purge -y --auto-remove build-essential && \
    rm -rf /var/cache/apt/archives/*
