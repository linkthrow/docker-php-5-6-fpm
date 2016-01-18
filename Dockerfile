FROM ubuntu:15.10

RUN apt-get update -y

RUN apt-get install -y \
  curl \
  wget \
  php5 \
  php5-fpm \
  php5-mysql \
  php5-mcrypt \
  php5-gd \
  php5-memcached \
  php5-curl \
  php5-sqlite \
  php5-dev \
  pkg-config \
  php5-xdebug

# enable mcrypt
RUN php5enmod mcrypt

ENTRYPOINT ["/usr/sbin/php5-fpm", "-F"]
