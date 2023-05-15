# 使用ENV命令为容器中安装的程序更新PATH环境变量
ENV PG_MAJOR 9.3
ENV PG_VERSION 9.3.4
RUN curl -SL http://***.com/postgres-$PG_VERSION.tar.xz| tar -xjc /usr/src/postgres && ENV PATH /usr/local/postgres-$PG_MAJOR/bin:$PATH
