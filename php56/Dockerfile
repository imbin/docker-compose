# alpine
FROM  hub.c.163.com/library/php:5-fpm-alpine
# alpine mirror

RUN echo "http://mirrors.ustc.edu.cn/alpine/latest-stable/main" > /etc/apk/repositories \
    && echo "http://mirrors.ustc.edu.cn/alpine/edge/testing/" >> /etc/apk/repositories \
    && echo "http://mirrors.ustc.edu.cn/alpine/edge/community/" >> /etc/apk/repositories \
#    && echo "nameserver 8.8.8.8" >> /etc/resolv.conf \
    && apk add --update freetype-dev \
        libjpeg-turbo-dev \
        libltdl \
        libmcrypt-dev \
        libpng-dev \
        shadow autoconf \
    && groupadd -g 1000 vboxsf \
    && usermod -a -G vboxsf www-data \
    && docker-php-ext-install iconv mcrypt bcmath mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && docker-php-ext-install mysqli pdo_mysql

# RUN pecl channel-update pecl.php.net \
#    && pecl install redis \
#    && docker-php-ext-enable redis \
#    && pecl install mongodb \
#    && docker-php-ext-enable mongodb \
    # && pecl install memcached \
    # && docker-php-ext-enable memcached

ENV PHPREDIS_VERSION 2.2.8

RUN curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/$PHPREDIS_VERSION.tar.gz \
    && tar zxvf /tmp/redis.tar.gz \
    && rm -f /tmp/redis.tar.gz \
    && mkdir -p /usr/src/php/ext \
    && mv phpredis-$PHPREDIS_VERSION /usr/src/php/ext/redis \
    && docker-php-ext-install redis \
    && rm -rf /usr/src/php

CMD ["php-fpm"]