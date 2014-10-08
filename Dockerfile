FROM wordpress:latest

ENV WOOCOMMERCE_VERSION 2.2.5
ENV WOOCOMMERCE_UPSTREAM_VERSION 2.2.5

RUN apt-get -y update \
    && apt-get -y install unzip \
    && wget https://downloads.wordpress.org/plugin/woocommerce.2.2.5.zip -O /tmp/temp.zip \
    && cd /usr/src/wordpress/wp-content/plugins \
    && unzip /tmp/temp.zip \
    && rm /tmp/temp.zip
