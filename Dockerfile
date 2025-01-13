FROM debian:bookworm-slim

LABEL author="zxf <seffeng@live.com>"

RUN \
 sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources &&\
 unlink /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
 apt-get clean &&\
 rm -rf /var/cache/apt/*

CMD ["bash"]