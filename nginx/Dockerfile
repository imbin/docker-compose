#FROM nginx:1.11.1
#FROM hub.c.163.com/library/nginx:1.13
FROM hub.c.163.com/library/nginx:1.13.0-alpine
# alpine mirror
RUN mkdir -p /etc/apk && echo 'http://mirrors.ustc.edu.cn/alpine/v3.3/main/' > /etc/apk/repositories


RUN echo http://nl.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories

RUN apk --no-cache add shadow \
    && groupadd -g 1000 vboxsf \
    && usermod -a -G vboxsf nginx

WORKDIR /opt/bin
CMD ["nginx"]
