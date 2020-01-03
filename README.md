# Docker Debian

修改源为中国科学技术大学(http://mirrors.ustc.edu.cn/)

常用命令：

```sh
# 拉取镜像
$ docker pull seffeng/debian

# 运行
$ docker run --name debian-test -id seffeng/debian

# 查看正在运行的容器
$ docker ps

# 停止
$ docker stop [CONTAINER ID | NAMES]

# 启动
$ docker start [CONTAINER ID | NAMES]

# 进入终端
$ docker exec -it [CONTAINER ID | NAMES] sh

# 删除容器
$ docker rm [CONTAINER ID | NAMES]

# 镜像列表查看
$ docker images

# 删除镜像
$ docker rmi [IMAGE ID]
```

