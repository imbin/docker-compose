# php 7

FROM php:7.2-fpm-alpine

##################################################
# RUN mkdir -p /data
# VOLUME ["/data"]

# mirror
RUN mkdir -p /etc/apk && echo 'http://mirrors.ustc.edu.cn/alpine/latest-stable/main/' > /etc/apk/repositories

#RUN echo http://nl.alpinelinux.org/alpine/latest-stable/community/ >> /etc/apk/repositories
RUN echo http://mirrors.ustc.edu.cn/alpine/latest-stable/community/ >> /etc/apk/repositories
# --no-cache
#  --update 
RUN apk add freetype-dev \
        libjpeg-turbo-dev \
        libltdl \
        libmcrypt-dev \
        libpng-dev \
        shadow libmemcached-libs zlib zlib-dev libmemcached-dev cyrus-sasl-dev \
        autoconf build-base linux-headers libaio-dev openssl-dev php7-dev \
        && docker-php-ext-install iconv bcmath opcache \ 
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \ 
    && docker-php-ext-install gd \ 
    && docker-php-ext-install mysqli pdo_mysql sockets

# docker-php-ext-install support extend: bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter ftp gd gettext gmp hash iconv imap interbase intl json ldap mbstring mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird pdo_mysql pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell readline recode reflection session shmop simplexml snmp soap sockets sodium spl standard sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter xsl zend_test zip

RUN pecl channel-update pecl.php.net \
    && pecl install swoole \
    && docker-php-ext-enable swoole \
    && pecl install mongodb \
    && docker-php-ext-enable mongodb \
    && pecl install memcached \
    && docker-php-ext-enable memcached \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && pecl install mcrypt \
    && docker-php-ext-enable mcrypt \
    && groupadd -g 1000 vboxsf \
    && usermod -a -G vboxsf www-data

CMD ["php-fpm"]
