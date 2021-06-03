FROM debian:buster-slim

MAINTAINER  seffeng "seffeng@sina.cn"

RUN \
 sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&\
 sed -i 's/security.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&\
 unlink /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
 apt-get clean &&\
 rm -rf /var/cache/apt/*

CMD ["bash"]